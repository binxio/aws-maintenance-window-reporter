import time
import boto3
import datadog
import logging

from collections import namedtuple

MaintenanceAction = namedtuple('MaintenanceAction', ['instance_id', 'instance_type', 'service'])


def create_maintenance_action_from_rds_arn(arn: str) -> MaintenanceAction:
    rds_resource_type_to_datadog_tag = {
        'db': 'dbinstanceidentifier',
        'cluster': 'dbclusteridentifier',
    }
    resource_id = arn.split(':')[-1]
    resource_type = arn.split(':')[-2]

    return MaintenanceAction(resource_id, rds_resource_type_to_datadog_tag.get(resource_type, resource_type), 'rds')


def get_rds_pending_maintenance_actions() -> [MaintenanceAction]:
    result = []

    client = boto3.client('rds')

    for response in client.get_paginator('describe_db_instances').paginate():
        for instance in response['DBInstances']:
            if instance.get('PendingModifiedValues'):
                result.append(create_maintenance_action_from_rds_arn(instance['DBInstanceArn']))

    for response in client.get_paginator('describe_db_clusters').paginate():
        for cluster in response['DBClusters']:
            if cluster.get('PendingModifiedValues'):
                result.append(create_maintenance_action_from_rds_arn(instance['DBClusterArn']))

    for response in client.get_paginator('describe_pending_maintenance_actions').paginate():
        for action in response['PendingMaintenanceActions']:
            result.append(create_maintenance_action_from_rds_arn(action['ResourceIdentifier']))

    return result


def get_ec2_pending_maintenance_actions() -> [MaintenanceAction]:
    result = []
    client = boto3.client('ec2')

    filters = [{
        'Name': 'event.code',
        'Values': [
            'system-maintenance',
            'instance-retirement',
        ]
    }]
    for response in client.get_paginator('describe_instance_status').paginate(Filters=filters):
        for instance_status in response['InstanceStatuses']:
            result.append(MaintenanceAction(instance_status['InstanceId'], 'instance-id', 'ec2'))
    return result


def report():
    datadog.initialize()

    timestamp = int(time.time())
    for action in get_ec2_pending_maintenance_actions():
        datadog.api.Metric.send(metric='aws.pending.maintenance.actions',
                                type='gauge',
                                tags=[f'service:{action.service}', f'{action.instance_type}:{action.instance_id}'],
                                points=[(timestamp, 1)])

    for action in get_rds_pending_maintenance_actions():
        logging.info("%s", action)
        datadog.api.Metric.send(metric='aws.pending.maintenance.actions',
                                type='gauge',
                                tags=[f'service:{action.service}', f'{action.instance_type}:{action.instance_id}'],
                                points=[(timestamp, 1)])


def handle(request, context):
    report()


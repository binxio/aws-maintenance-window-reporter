import time
import boto3
import datadog
from typing import Optional
from datetime import datetime
from aws_maintenance_window_reporter.logger import log
from aws_maintenance_window_reporter.maintenance_window import (
    get_next_maintenance_window,
)
from collections import namedtuple

from aws_maintenance_window_reporter.environment_parameter import get as get_parameter

MaintenanceAction = namedtuple(
    "MaintenanceAction",
    ["instance_id", "instance_type", "service", "not_before", "description"],
)


def create_maintenance_action_from_rds_arn(
    arn: str, not_before: Optional[datetime], description: Optional[str]
) -> MaintenanceAction:
    rds_resource_type_to_datadog_tag = {
        "db": "dbinstanceidentifier",
        "cluster": "dbclusteridentifier",
    }
    resource_id = arn.split(":")[-1]
    resource_type = arn.split(":")[-2]

    return MaintenanceAction(
        resource_id,
        rds_resource_type_to_datadog_tag.get(resource_type, resource_type),
        "rds",
        not_before,
        description,
    )


def get_rds_pending_maintenance_actions() -> [MaintenanceAction]:
    result = []

    client = boto3.client("rds")

    for response in client.get_paginator("describe_db_instances").paginate():
        for instance in response["DBInstances"]:
            if instance.get("PendingModifiedValues"):
                arn = instance["DBInstanceArn"]
                not_before, _ = get_next_maintenance_window(client, arn)
                result.append(
                    create_maintenance_action_from_rds_arn(
                        arn, not_before, "Pending modified values"
                    )
                )

    for response in client.get_paginator("describe_db_clusters").paginate():
        for cluster in response["DBClusters"]:
            if cluster.get("PendingModifiedValues"):
                arn = instance["DBClusterArn"]
                not_before, _ = get_next_maintenance_window(client, arn)
                result.append(
                    create_maintenance_action_from_rds_arn(
                        arn, not_before, "Pending modified values"
                    )
                )

    for response in client.get_paginator(
        "describe_pending_maintenance_actions"
    ).paginate():
        for action in response["PendingMaintenanceActions"]:
            arn = action["ResourceIdentifier"]
            not_before, _ = get_next_maintenance_window(client, arn)
            for detail in action["PendingMaintenanceActionDetails"]:
                description = detail["Description"]
                result.append(
                    create_maintenance_action_from_rds_arn(
                        action["ResourceIdentifier"], not_before, description
                    )
                )

    return result


def get_ec2_pending_maintenance_actions() -> [MaintenanceAction]:
    result = []
    client = boto3.client("ec2")

    filters = [
        {
            "Name": "event.code",
            "Values": [
                "system-maintenance",
                "instance-retirement",
            ],
        }
    ]
    for response in client.get_paginator("describe_instance_status").paginate(
        Filters=filters
    ):
        for instance_status in response["InstanceStatuses"]:
            for event in instance_status["Events"]:
                description = event.get("Description")
                not_before = event.get("NotBefore")
                if description and not description.startswith("[Completed]"):
                    result.append(
                        MaintenanceAction(
                            instance_status["InstanceId"],
                            "instance-id",
                            "ec2",
                            not_before,
                            description,
                        )
                    )
    return result


def send_metric(action: MaintenanceAction, timestamp: datetime, do_send_metrics: bool):
    log.info(
        "%s %s %s: %s on %s",
        action.service,
        action.instance_type,
        action.instance_id,
        action.description,
        action.not_before,
    )
    if do_send_metrics:
        datadog.api.Metric.send(
            metric="aws.pending.maintenance.actions",
            type="gauge",
            tags=[
                f"service:{action.service}",
                f"{action.instance_type}:{action.instance_id}",
            ],
            points=[(timestamp, 1)],
        )


def report(do_send_metrics: bool = True):
    datadog.initialize(api_key=get_parameter("DD_API_KEY"))

    timestamp = int(time.time())
    for action in get_ec2_pending_maintenance_actions():
        send_metric(action, timestamp, do_send_metrics)

    for action in get_rds_pending_maintenance_actions():
        send_metric(action, timestamp, do_send_metrics)


def handle(request, context):
    report(True)

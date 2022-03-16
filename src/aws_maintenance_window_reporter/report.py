"""
reports upcoming AWS maintenance windows
"""
import time
import datadog
import boto3

from aws_maintenance_window_reporter import (
    ec2,
    rds,
    redshift,
    opensearch,
    maintenance_action,
)

from aws_maintenance_window_reporter.environment_parameter import get as get_parameter


def report(session: boto3.session.Session, do_send_metrics: bool = True):
    """
    reports upcoming maintenance windows. If `do_send_metrics` is set, the metric
    'aws.pending.maintenance.windows' will send to DataDog too.
    """
    datadog.initialize(api_key=get_parameter("DD_API_KEY", session), host_name="lambda")

    timestamp = int(time.time())
    for action in ec2.get_pending_maintenance_actions(session):
        maintenance_action.send_metric(action, timestamp, do_send_metrics)

    for action in rds.get_pending_maintenance_actions(session):
        maintenance_action.send_metric(action, timestamp, do_send_metrics)

    for action in redshift.get_pending_maintenance_actions(session):
        maintenance_action.send_metric(action, timestamp, do_send_metrics)

    for action in opensearch.get_pending_maintenance_actions(session):
        maintenance_action.send_metric(action, timestamp, do_send_metrics)


def handle(request, context):
    # pylint: disable=unused-argument
    # noinspection PyUnusedLocal
    """
    AWS lambda entry point for reporting upcoming maintenance windows
    """
    report(boto3.session.Session(), True)

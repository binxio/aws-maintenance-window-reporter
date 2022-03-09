"""
represents an AWS maintenance actions and windows
"""
import os
from collections import namedtuple
import datadog
from aws_maintenance_window_reporter.logger import log

MaintenanceAction = namedtuple(
    "MaintenanceAction",
    ["instance_id", "instance_type", "service", "not_before", "description"],
)

datadog_tags = list(
    map(lambda s: s.strip(), os.environ.get("DATADOG_TAGS", "").split(","))
)


def send_metric(action: MaintenanceAction, timestamp: int, do_send_metrics: bool):
    """
    If the action has a `not_before` it counts as "aws.pending.maintenance.windows" to DataDog. Otherwise
    it is a  "aws.pending.maintenance.actions"
    """
    if action.not_before:
        log.info(
            "Maintenance window of %s %s %s: %s on %s",
            action.service,
            action.instance_type,
            action.instance_id,
            action.description,
            action.not_before,
        )
    else:
        log.info(
            "Maintenance action available for %s %s %s: %s",
            action.service,
            action.instance_type,
            action.instance_id,
            action.description,
        )

    if do_send_metrics:
        tags = [
            f"service:{action.service}",
            f"{action.instance_type}:{action.instance_id}",
        ]
        tags.extend(datadog_tags)
        metric_name = (
            "aws.pending.maintenance.windows"
            if action.not_before
            else "aws.pending.maintenance.actions"
        )
        datadog.api.Metric.send(
            metric=metric_name,
            type="gauge",
            tags=tags,
            points=[(timestamp, 1)],
        )

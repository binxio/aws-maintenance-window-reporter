"""
represents an AWS maintenance windows
"""
from collections import namedtuple
import datadog
from aws_maintenance_window_reporter.logger import log

MaintenanceAction = namedtuple(
    "MaintenanceAction",
    ["instance_id", "instance_type", "service", "not_before", "description"],
)


def send_metric(action: MaintenanceAction, timestamp: int, do_send_metrics: bool):
    """
    sends the upcoming maintenance windows as a count in the
    metric "aws.pending.maintenance.actions" to DataDog.
    """
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

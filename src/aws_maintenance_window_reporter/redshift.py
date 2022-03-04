"""
retrieves upcoming maintenance windows for Redshift clusters.
"""
from datetime import datetime

import boto3

from aws_maintenance_window_reporter.maintenance_action import MaintenanceAction
from aws_maintenance_window_reporter.aws_maintenance_window import (
    next_maintenance_window,
)


def get_pending_maintenance_actions() -> [MaintenanceAction]:
    """
    gets a list of pending maintenance actions on redshift Clusters
    """
    result = []

    client = boto3.client("redshift")

    for response in client.get_paginator("describe_clusters").paginate():
        for cluster in response["Clusters"]:
            if cluster.get("PendingModifiedValues"):
                not_before, _ = next_maintenance_window(
                    cluster["PreferredMaintenanceWindow"],
                )
                result.append(
                    MaintenanceAction(
                        cluster["ClusterIdentifier"],
                        "redshift",
                        "clusteridentifier",
                        not_before,
                        "Pending modified values",
                    )
                )

    return result

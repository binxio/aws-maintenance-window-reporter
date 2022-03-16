"""
retrieves upcoming maintenance windows for Redshift clusters.
"""
from datetime import datetime

import boto3

from aws_maintenance_window_reporter.maintenance_action import MaintenanceAction
from aws_maintenance_window_reporter.aws_maintenance_window import (
    next_maintenance_window,
)


def get_pending_maintenance_actions(
    session: boto3.session.Session,
) -> [MaintenanceAction]:
    """
    gets a list of pending maintenance actions on redshift Clusters
    """
    result = []

    client = session.client("redshift")

    for response in client.get_paginator("describe_clusters").paginate():
        for cluster in response["Clusters"]:
            if cluster.get("PendingModifiedValues"):
                not_before = cluster.get("NextMaintenanceWindowStartTime")
                result.append(
                    MaintenanceAction(
                        cluster["ClusterIdentifier"],
                        "clusteridentifier",
                        "redshift",
                        not_before,
                        "Pending modified values",
                    )
                )

    return result

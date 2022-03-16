"""
retrieves upcoming maintenance windows for RDS clusters and instances.
"""
from typing import Optional, Dict, Tuple
from datetime import datetime

import boto3
from mypy_boto3_rds import RDSClient

from aws_maintenance_window_reporter.maintenance_action import MaintenanceAction
from aws_maintenance_window_reporter.aws_maintenance_window import (
    next_maintenance_window,
)


def get_pending_maintenance_actions(
    session: boto3.session.Session,
) -> [MaintenanceAction]:
    """
    gets a list of pending maintenance actions on RDS clusters and instances
    """
    result = []

    client = session.client("rds")

    for response in client.get_paginator("describe_db_instances").paginate():
        for instance in response["DBInstances"]:
            if instance.get("PendingModifiedValues"):
                arn = instance["DBInstanceArn"]
                result.append(
                    _create_maintenance_action_from_rds_arn(
                        arn, None, "Pending modified values"
                    )
                )

    for response in client.get_paginator("describe_db_clusters").paginate():
        for cluster in response["DBClusters"]:
            arn = cluster["DBClusterArn"]
            not_before, _ = get_next_maintenance_window_of_resource(client, arn)
            if cluster.get("PendingModifiedValues"):
                result.append(
                    _create_maintenance_action_from_rds_arn(
                        arn, None, "Pending modified values"
                    )
                )

    for response in client.get_paginator(
        "describe_pending_maintenance_actions"
    ).paginate():
        for action in response["PendingMaintenanceActions"]:
            details = action["PendingMaintenanceActionDetails"]
            apply_dates = sorted(
                map(
                    lambda d: d["CurrentApplyDate"],
                    filter(lambda d: "CurrentApplyDate" in d, details),
                )
            )
            not_before = apply_dates[0] if apply_dates else None
            description = "; ".join(
                map(
                    lambda d: d["Description"],
                    details,
                )
            )
            result.append(
                _create_maintenance_action_from_rds_arn(
                    action["ResourceIdentifier"], not_before, description
                )
            )

    return result


def _create_maintenance_action_from_rds_arn(
    arn: str, not_before: Optional[datetime], description: Optional[str]
) -> MaintenanceAction:
    """
    creates a MaintenanceAction from an RDS ARN.  The resource type is set to the associated
    DataDog tag for the respective resource type.
    """
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


# cached maintenance windows per ARN
_cache: Dict[str, Tuple[datetime, datetime]] = {}


def get_next_maintenance_window_of_resource(
    rds: RDSClient, arn: str
) -> (datetime, datetime):
    """
    returns the next maintenance window for the RDS resource specified with by `arn`.
    The result is stored in a cache. Subsequent calls will return the previously cached value
    """
    if arn not in _cache:
        if ":cluster:" in arn:
            response = rds.describe_db_clusters(DBClusterIdentifier=arn)
            window = response["DBClusters"][0]["PreferredMaintenanceWindow"]
        else:
            response = rds.describe_db_instances(DBInstanceIdentifier=arn)
            window = response["DBInstances"][0]["PreferredMaintenanceWindow"]

        _cache[arn] = next_maintenance_window(window, datetime.utcnow())

    return _cache[arn]

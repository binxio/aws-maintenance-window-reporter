"""
retrieves upcoming maintenance windows for OpenSearch domains.
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
    gets a list of pending maintenance actions on opensearch clusters
    """
    result = []

    client = session.client("opensearch")

    domain_names = list(
        map(lambda d: d["DomainName"], client.list_domain_names()["DomainNames"])
    )
    response = client.describe_domains(DomainNames=domain_names)
    for domain in response["DomainStatusList"]:
        service_option = domain.get("ServiceSoftwareOptions")
        if service_option and service_option.get("UpdateStatus") not in [
            "COMPLETED",
            "NOT_ELIGIBLE",
        ]:
            update_date = service_option.get("AutomatedUpdateDate")
            result.append(
                MaintenanceAction(
                    domain.get("DomainName"),
                    "domainid",
                    "opensearch",
                    update_date
                    if update_date and update_date.timestamp() != 0
                    else None,
                    service_option.get("Description"),
                )
            )

    return result

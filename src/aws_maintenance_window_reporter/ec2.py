"""
retrieves upcoming maintenance windows for EC2 instances.
"""
import boto3
from aws_maintenance_window_reporter.maintenance_action import MaintenanceAction


def get_pending_maintenance_actions() -> [MaintenanceAction]:
    """
    gets a list of pending maintenance actions on EC2 instances
    """
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

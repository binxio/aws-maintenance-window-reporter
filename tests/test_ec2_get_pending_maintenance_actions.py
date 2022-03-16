import datetime
from unittest import TestCase, main

import botocore
from botocore.stub import Stubber
from dateutil.tz import tzutc

from aws_maintenance_window_reporter.ec2 import get_pending_maintenance_actions


class EC2MaintenanceWindow(TestCase):
    def test_get_pending_maintenance_actions(self):

        session = botocore.session.get_session()
        ec2 = session.create_client("ec2")
        stub = Stubber(ec2)
        session.client = lambda x: ec2

        expected_parameters = {
            "Filters": [
                {
                    "Name": "event.code",
                    "Values": [
                        "instance-stop",
                        "instance-reboot",
                        "instance-retirement",
                        "system-reboot",
                        "system-maintenance",
                    ],
                }
            ]
        }
        response = {
            "InstanceStatuses": [
                {
                    "AvailabilityZone": "eu-central-1b",
                    "Events": [
                        {
                            "InstanceEventId": "instance-event-0e3a65b8b236a9991",
                            "Code": "instance-stop",
                            "Description": "The instance is running on degraded hardware",
                            "NotBefore": datetime.datetime(
                                2022, 3, 28, 0, 0, tzinfo=tzutc()
                            ),
                        }
                    ],
                    "InstanceId": "i-0e976c909a8344202",
                    "InstanceState": {"Code": 16, "Name": "running"},
                    "InstanceStatus": {
                        "Details": [{"Name": "reachability", "Status": "passed"}],
                        "Status": "ok",
                    },
                    "SystemStatus": {
                        "Details": [{"Name": "reachability", "Status": "passed"}],
                        "Status": "ok",
                    },
                }
            ],
            "ResponseMetadata": {
                "RequestId": "94b3c306-11a0-424d-8747-f7cb9b9576a7",
                "HTTPStatusCode": 200,
                "HTTPHeaders": {
                    "x-amzn-requestid": "94b3c306-11a0-424d-8747-f7cb9b9576a7",
                    "cache-control": "no-cache, no-store",
                    "strict-transport-security": "max-age=31536000; includeSubDomains",
                    "content-type": "text/xml;charset=UTF-8",
                    "content-length": "1533",
                    "date": "Sun, 13 Mar 2022 20:44:03 GMT",
                    "server": "AmazonEC2",
                },
                "RetryAttempts": 0,
            },
        }
        stub.add_response("describe_instance_status", response, expected_parameters)
        stub.activate()

        result = get_pending_maintenance_actions(session)
        self.assertEqual(
            1, len(result), f"expected a single maintenance windows, got {len(result)}|"
        )

        self.assertEqual("i-0e976c909a8344202", result[0].instance_id)
        self.assertEqual("instance-id", result[0].instance_type)
        self.assertEqual("ec2", result[0].service)
        self.assertEqual(
            datetime.datetime(2022, 3, 28, 0, 0, tzinfo=tzutc()), result[0].not_before
        )
        self.assertEqual(
            "The instance is running on degraded hardware", result[0].description
        )


if __name__ == "__main__":
    main()

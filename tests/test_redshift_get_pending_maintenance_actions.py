import datetime
from unittest import TestCase, main

import botocore
from botocore.stub import Stubber
from dateutil.tz import tzutc

from aws_maintenance_window_reporter.redshift import get_pending_maintenance_actions


class RedshiftMaintenanceWindow(TestCase):
    def test_get_pending_maintenance_actions(self):

        stubs = {}
        clients = {}
        session = botocore.session.get_session()
        session.client = lambda x : clients[x]

        clients['redshift']= session.create_client('redshift')
        stubs['redshift'] = Stubber(clients['redshift'])
        expected_parameters ={}
        response = {'Clusters': [{'ClusterIdentifier': 'cluster-1', 'NodeType': 'dc2.large', 'ClusterStatus': 'available', 'ClusterAvailabilityStatus': 'Available', 'MasterUsername': 'awsuser', 'DBName': 'dev', 'Endpoint': {'Address': 'cluster-1.cibi7olk3kwo.eu-central-1.redshift.amazonaws.com', 'Port': 5439}, 'ClusterCreateTime': datetime.datetime(2022, 3, 15, 7, 52, 52, 686000, tzinfo=tzutc()), 'AutomatedSnapshotRetentionPeriod': 1, 'ManualSnapshotRetentionPeriod': -1, 'ClusterSecurityGroups': [], 'VpcSecurityGroups': [{'VpcSecurityGroupId': 'sg-0f719bfac78b44da3', 'Status': 'active'}], 'ClusterParameterGroups': [{'ParameterGroupName': 'default.redshift-1.0', 'ParameterApplyStatus': 'in-sync'}], 'ClusterSubnetGroupName': 'default', 'VpcId': 'vpc-080cdd95ab5181450', 'AvailabilityZone': 'eu-central-1c', 'PreferredMaintenanceWindow': 'tue:09:00-tue:09:30', 'PendingModifiedValues': {'MaintenanceTrackName': 'trailing'}, 'ClusterVersion': '1.0', 'AllowVersionUpgrade': True, 'NumberOfNodes': 1, 'PubliclyAccessible': False, 'Encrypted': False, 'ClusterPublicKey': 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCETxD6AHtqSm5VYIORPP13AHf/3uNNkHTYliRwgN+5okRm7XlnPRqnq5lOhZSBme4Ib31kvpKycx7kOwI0bHmGnsK1VmgzSMmAQ32weCOFnaxHeDdoYNzgUTpnWUyzLz3GNp6V7TNLkpNn/KyBWGntT6bvsyOV8TMenVAdoZnH71DH1XGESGPq5p2dOEUBCHXFmXU55XPKnYrTRWWkDF8qz0Esmu+efzi6Weq9ZPM4Uxu3fXlETh4KUcAAo8cTlh7P7PbwnwvWeaE/vH2WkksCopetBK6eE17oDz9YWu1aMWWnkg/Au8a7LWPVTcF74S0w+x2BtnlDoUHLxw7ROxNh Amazon-Redshift\n', 'ClusterNodes': [{'NodeRole': 'SHARED', 'PrivateIPAddress': '172.31.12.118', 'PublicIPAddress': '3.64.100.81'}], 'ClusterRevisionNumber': '36224', 'Tags': [], 'EnhancedVpcRouting': False, 'IamRoles': [], 'MaintenanceTrackName': 'current', 'DeferredMaintenanceWindows': [], 'NextMaintenanceWindowStartTime': datetime.datetime(2022, 1, 1, 9, 0, tzinfo=tzutc()), 'AvailabilityZoneRelocationStatus': 'disabled', 'ClusterNamespaceArn': 'arn:aws:redshift:eu-central-1:123456789012:namespace:ad73b3da-4efc-4ab5-bc69-19de1e852901', 'TotalStorageCapacityInMegaBytes': 400000, 'AquaConfiguration': {'AquaStatus': 'disabled', 'AquaConfigurationStatus': 'auto'}}], 'ResponseMetadata': {'RequestId': 'f6dc59ad-0660-4751-bc0a-8473cb688010', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': 'f6dc59ad-0660-4751-bc0a-8473cb688010', 'content-type': 'text/xml', 'content-length': '3883', 'vary': 'accept-encoding', 'date': 'Tue, 15 Mar 2022 08:10:47 GMT'}, 'RetryAttempts': 0}}
        stubs['redshift'].add_response('describe_clusters', response, expected_parameters)
        for _, stub in stubs.items():
            stub.activate()
        result = get_pending_maintenance_actions(session)
        self.assertEqual(
            1, len(result), f"expected a single maintenance windows, got {len(result)}|"
        )

        self.assertEqual("cluster-1", result[0].instance_id)
        self.assertEqual("clusteridentifier", result[0].instance_type)
        self.assertEqual("redshift", result[0].service)
        self.assertEqual(
            datetime.datetime(2022, 1, 1, 9, 0, tzinfo=tzutc()), result[0].not_before
        )
        self.assertEqual(
            "Pending modified values", result[0].description
        )


if __name__ == "__main__":
    main()

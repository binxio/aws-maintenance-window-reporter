import datetime
from unittest import TestCase, main

import botocore
from botocore.stub import Stubber
from dateutil.tz import tzutc

from aws_maintenance_window_reporter.rds import get_pending_maintenance_actions


class RDSMaintenanceWindow(TestCase):
    def test_get_pending_maintenance_actions(self):

        clients = {}
        stubs = {}
        session = botocore.session.get_session()
        session.client = lambda x : clients[x]
        clients['rds']= session.create_client('rds')
        stubs['rds'] = Stubber(clients['rds'])
        expected_parameters ={}
        response = {'DBInstances': [{'DBInstanceIdentifier': 'database-1-instance-1', 'DBInstanceClass': 'db.t3.small', 'Engine': 'aurora-mysql', 'DBInstanceStatus': 'creating', 'MasterUsername': 'admin', 'AllocatedStorage': 1, 'PreferredBackupWindow': '02:40-03:10', 'BackupRetentionPeriod': 1, 'DBSecurityGroups': [], 'VpcSecurityGroups': [{'VpcSecurityGroupId': 'sg-0f719bfac78b44da3', 'Status': 'active'}], 'DBParameterGroups': [{'DBParameterGroupName': 'default.aurora-mysql5.7', 'ParameterApplyStatus': 'in-sync'}], 'AvailabilityZone': 'eu-central-1b', 'DBSubnetGroup': {'DBSubnetGroupName': 'default-vpc-080cdd95ab5181450', 'DBSubnetGroupDescription': 'Created from the RDS Management Console', 'VpcId': 'vpc-080cdd95ab5181450', 'SubnetGroupStatus': 'Complete', 'Subnets': [{'SubnetIdentifier': 'subnet-006a39cb2397164c8', 'SubnetAvailabilityZone': {'Name': 'eu-central-1c'}, 'SubnetOutpost': {}, 'SubnetStatus': 'Active'}, {'SubnetIdentifier': 'subnet-03614fe81f2e3e60b', 'SubnetAvailabilityZone': {'Name': 'eu-central-1a'}, 'SubnetOutpost': {}, 'SubnetStatus': 'Active'}, {'SubnetIdentifier': 'subnet-0cdbd6322dae8fbc0', 'SubnetAvailabilityZone': {'Name': 'eu-central-1b'}, 'SubnetOutpost': {}, 'SubnetStatus': 'Active'}]}, 'PreferredMaintenanceWindow': 'tue:23:05-tue:23:35', 'PendingModifiedValues': {}, 'MultiAZ': False, 'EngineVersion': '5.7.mysql_aurora.2.03.2', 'AutoMinorVersionUpgrade': True, 'ReadReplicaDBInstanceIdentifiers': [], 'LicenseModel': 'general-public-license', 'OptionGroupMemberships': [{'OptionGroupName': 'default:aurora-mysql-5-7', 'Status': 'in-sync'}], 'PubliclyAccessible': False, 'StorageType': 'aurora', 'DbInstancePort': 0, 'DBClusterIdentifier': 'database-1', 'StorageEncrypted': True, 'KmsKeyId': 'arn:aws:kms:eu-central-1:123456789012:key/f91ccc3d-b932-468b-a7bb-c2c1ff5abba6', 'DbiResourceId': 'db-U2LVMPW4WD2SI4EY3UPFPMHRXU', 'CACertificateIdentifier': 'rds-ca-2019', 'DomainMemberships': [], 'CopyTagsToSnapshot': False, 'MonitoringInterval': 60, 'MonitoringRoleArn': 'arn:aws:iam::123456789012:role/rds-monitoring-role', 'PromotionTier': 1, 'DBInstanceArn': 'arn:aws:rds:eu-central-1:123456789012:db:database-1-instance-1', 'IAMDatabaseAuthenticationEnabled': False, 'PerformanceInsightsEnabled': False, 'DeletionProtection': False, 'AssociatedRoles': [], 'TagList': [], 'CustomerOwnedIpEnabled': False, 'BackupTarget': 'region'}], 'ResponseMetadata': {'RequestId': '106b327a-e65c-4f72-b327-ccd07ff130f3', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': '106b327a-e65c-4f72-b327-ccd07ff130f3', 'content-type': 'text/xml', 'content-length': '4744', 'date': 'Tue, 15 Mar 2022 08:10:45 GMT'}, 'RetryAttempts': 0}}
        stubs['rds'].add_response('describe_db_instances', response, expected_parameters)
        expected_parameters ={}
        response = {'DBClusters': [{'AllocatedStorage': 1, 'AvailabilityZones': ['eu-central-1b', 'eu-central-1c', 'eu-central-1a'], 'BackupRetentionPeriod': 1, 'DatabaseName': '', 'DBClusterIdentifier': 'database-1', 'DBClusterParameterGroup': 'default.aurora-mysql5.7', 'DBSubnetGroup': 'default-vpc-080cdd95ab5181450', 'Status': 'available', 'EarliestRestorableTime': datetime.datetime(2022, 3, 15, 7, 55, 17, 547000, tzinfo=tzutc()), 'Endpoint': 'database-1.cluster-cevzgap1nuvu.eu-central-1.rds.amazonaws.com', 'ReaderEndpoint': 'database-1.cluster-ro-cevzgap1nuvu.eu-central-1.rds.amazonaws.com', 'MultiAZ': False, 'Engine': 'aurora-mysql', 'EngineVersion': '5.7.mysql_aurora.2.03.2', 'LatestRestorableTime': datetime.datetime(2022, 3, 15, 7, 55, 17, 547000, tzinfo=tzutc()), 'Port': 3306, 'MasterUsername': 'admin', 'PreferredBackupWindow': '02:40-03:10', 'PreferredMaintenanceWindow': 'thu:04:10-thu:04:40', 'ReadReplicaIdentifiers': [], 'DBClusterMembers': [{'DBInstanceIdentifier': 'database-1-instance-1', 'IsClusterWriter': True, 'DBClusterParameterGroupStatus': 'in-sync', 'PromotionTier': 1}], 'VpcSecurityGroups': [{'VpcSecurityGroupId': 'sg-0f719bfac78b44da3', 'Status': 'active'}], 'HostedZoneId': 'Z1RLNUO7B9Q6NB', 'StorageEncrypted': True, 'KmsKeyId': 'arn:aws:kms:eu-central-1:123456789012:key/f91ccc3d-b932-468b-a7bb-c2c1ff5abba6', 'DbClusterResourceId': 'cluster-WW3PVOONWOPDC5TZOSCMSC46J4', 'DBClusterArn': 'arn:aws:rds:eu-central-1:123456789012:cluster:database-1', 'AssociatedRoles': [], 'IAMDatabaseAuthenticationEnabled': False, 'ClusterCreateTime': datetime.datetime(2022, 3, 15, 7, 54, 37, 147000, tzinfo=tzutc()), 'EngineMode': 'provisioned', 'DeletionProtection': False, 'HttpEndpointEnabled': False, 'ActivityStreamStatus': 'stopped', 'CopyTagsToSnapshot': True, 'CrossAccountClone': False, 'DomainMemberships': [], 'TagList': [], 'PendingModifiedValues': {'EngineVersion': '5.7.mysql_aurora.2.03.3'}, 'AutoMinorVersionUpgrade': False}], 'ResponseMetadata': {'RequestId': '913775e9-2d4b-474d-9290-1e217f9a53df', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': '913775e9-2d4b-474d-9290-1e217f9a53df', 'content-type': 'text/xml', 'content-length': '3577', 'date': 'Tue, 15 Mar 2022 08:10:45 GMT'}, 'RetryAttempts': 0}}
        stubs['rds'].add_response('describe_db_clusters', response, expected_parameters)
        expected_parameters ={'DBClusterIdentifier': 'arn:aws:rds:eu-central-1:123456789012:cluster:database-1'}
        response = {'DBClusters': [{'AllocatedStorage': 1, 'AvailabilityZones': ['eu-central-1b', 'eu-central-1c', 'eu-central-1a'], 'BackupRetentionPeriod': 1, 'DatabaseName': '', 'DBClusterIdentifier': 'database-1', 'DBClusterParameterGroup': 'default.aurora-mysql5.7', 'DBSubnetGroup': 'default-vpc-080cdd95ab5181450', 'Status': 'available', 'EarliestRestorableTime': datetime.datetime(2022, 3, 15, 7, 55, 17, 547000, tzinfo=tzutc()), 'Endpoint': 'database-1.cluster-cevzgap1nuvu.eu-central-1.rds.amazonaws.com', 'ReaderEndpoint': 'database-1.cluster-ro-cevzgap1nuvu.eu-central-1.rds.amazonaws.com', 'MultiAZ': False, 'Engine': 'aurora-mysql', 'EngineVersion': '5.7.mysql_aurora.2.03.2', 'LatestRestorableTime': datetime.datetime(2022, 3, 15, 7, 55, 17, 547000, tzinfo=tzutc()), 'Port': 3306, 'MasterUsername': 'admin', 'PreferredBackupWindow': '02:40-03:10', 'PreferredMaintenanceWindow': 'thu:04:10-thu:04:40', 'ReadReplicaIdentifiers': [], 'DBClusterMembers': [{'DBInstanceIdentifier': 'database-1-instance-1', 'IsClusterWriter': True, 'DBClusterParameterGroupStatus': 'in-sync', 'PromotionTier': 1}], 'VpcSecurityGroups': [{'VpcSecurityGroupId': 'sg-0f719bfac78b44da3', 'Status': 'active'}], 'HostedZoneId': 'Z1RLNUO7B9Q6NB', 'StorageEncrypted': True, 'KmsKeyId': 'arn:aws:kms:eu-central-1:123456789012:key/f91ccc3d-b932-468b-a7bb-c2c1ff5abba6', 'DbClusterResourceId': 'cluster-WW3PVOONWOPDC5TZOSCMSC46J4', 'DBClusterArn': 'arn:aws:rds:eu-central-1:123456789012:cluster:database-1', 'AssociatedRoles': [], 'IAMDatabaseAuthenticationEnabled': False, 'ClusterCreateTime': datetime.datetime(2022, 3, 15, 7, 54, 37, 147000, tzinfo=tzutc()), 'EngineMode': 'provisioned', 'DeletionProtection': False, 'HttpEndpointEnabled': False, 'ActivityStreamStatus': 'stopped', 'CopyTagsToSnapshot': True, 'CrossAccountClone': False, 'DomainMemberships': [], 'TagList': [], 'PendingModifiedValues': {'EngineVersion': '5.7.mysql_aurora.2.03.3'}, 'AutoMinorVersionUpgrade': False}], 'ResponseMetadata': {'RequestId': '6d336408-e09b-4d9b-94db-4b02996590e5', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': '6d336408-e09b-4d9b-94db-4b02996590e5', 'content-type': 'text/xml', 'content-length': '3577', 'date': 'Tue, 15 Mar 2022 08:10:45 GMT'}, 'RetryAttempts': 0}}
        stubs['rds'].add_response('describe_db_clusters', response, expected_parameters)
        expected_parameters ={}
        response = {'PendingMaintenanceActions': [{'ResourceIdentifier': 'arn:aws:rds:eu-central-1:123456789012:cluster:database-1', 'PendingMaintenanceActionDetails': [{'Action': 'system-update', 'OptInStatus': 'next-maintenance', 'CurrentApplyDate': datetime.datetime(2022, 3, 16, 4, 0, tzinfo=tzutc()), 'Description': 'Upgrade to Aurora PostgreSQL 2.9.2'}]}], 'ResponseMetadata': {'RequestId': 'd9ad62c6-d262-4407-9c0e-4ff15ff2eed8', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': 'd9ad62c6-d262-4407-9c0e-4ff15ff2eed8', 'content-type': 'text/xml', 'content-length': '997', 'date': 'Mon, 14 Mar 2022 20:33:44 GMT'}, 'RetryAttempts': 0}}
        stubs['rds'].add_response('describe_pending_maintenance_actions', response, expected_parameters)
        stubs['rds'].activate()

        result = get_pending_maintenance_actions(session)
        self.assertEqual(
            2, len(result), f"expected a single maintenance windows, got {len(result)}|"
        )

        self.assertEqual("database-1", result[0].instance_id)
        self.assertEqual("dbclusteridentifier", result[0].instance_type)
        self.assertEqual("rds", result[0].service)
        self.assertEqual(
            None, result[0].not_before
        )
        self.assertEqual(
            "Pending modified values", result[0].description
        )

        self.assertEqual("database-1", result[1].instance_id)
        self.assertEqual("dbclusteridentifier", result[1].instance_type)
        self.assertEqual("rds", result[1].service)
        self.assertEqual(
            datetime.datetime(2022, 3, 16, 4, 0, tzinfo=tzutc()), result[1].not_before
        )
        self.assertEqual(
            "Upgrade to Aurora PostgreSQL 2.9.2", result[1].description
        )


if __name__ == "__main__":
    main()

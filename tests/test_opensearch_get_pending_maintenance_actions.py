import datetime
from unittest import TestCase, main

import botocore
from botocore.stub import Stubber
from dateutil.tz import tzutc, tzlocal

from aws_maintenance_window_reporter.opensearch import get_pending_maintenance_actions


class OpenSearchMaintenanceWindow(TestCase):
    def test_get_pending_maintenance_actions(self):

        stubs = {}
        clients = {}
        session = botocore.session.get_session()
        session.client = lambda x : clients[x]

        clients['opensearch']= session.create_client('opensearch')
        stubs['opensearch'] = Stubber(clients['opensearch'])
        expected_parameters = {}
        response = {'ResponseMetadata': {'RequestId': 'b3c3a1d2-033d-42cf-b55a-d4a1dc6ce214', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': 'b3c3a1d2-033d-42cf-b55a-d4a1dc6ce214', 'content-type': 'application/json', 'content-length': '70', 'date': 'Tue, 15 Mar 2022 08:23:58 GMT'}, 'RetryAttempts': 0}, 'DomainNames': [{'DomainName': 'cluster-1', 'EngineType': 'OpenSearch'}]}
        stubs['opensearch'].add_response('list_domain_names', response, expected_parameters)
        expected_parameters ={'DomainNames': ['cluster-1']}
        response = {'ResponseMetadata': {'RequestId': '62898fb3-d0c5-4919-b888-fc2dd411a3e5', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': '62898fb3-d0c5-4919-b888-fc2dd411a3e5', 'content-type': 'application/json', 'content-length': '2387', 'date': 'Tue, 15 Mar 2022 08:23:59 GMT'}, 'RetryAttempts': 0}, 'DomainStatusList': [{'DomainId': '444093529715/cluster-1', 'DomainName': 'cluster-1', 'ARN': 'arn:aws:es:eu-central-1:123456789012:domain/cluster-1', 'Created': True, 'Deleted': False, 'Endpoints': {'vpc': 'vpc-cluster-1-7xojmf6qkb2rcxxcgw4rlpbzxa.eu-central-1.es.amazonaws.com'}, 'Processing': False, 'UpgradeProcessing': True, 'EngineVersion': 'OpenSearch_1.0', 'ClusterConfig': {'InstanceType': 'r6g.xlarge.search', 'InstanceCount': 3, 'DedicatedMasterEnabled': False, 'ZoneAwarenessEnabled': False, 'WarmEnabled': False, 'ColdStorageOptions': {'Enabled': False}}, 'EBSOptions': {'EBSEnabled': True, 'VolumeType': 'gp2', 'VolumeSize': 10}, 'AccessPolicies': '{"Version":"2012-10-17","Statement":[{"Effect":"Deny","Principal":{"AWS":"*"},"Action":"es:*","Resource":"arn:aws:es:eu-central-1:123456789012:domain/cluster-1/*"}]}', 'SnapshotOptions': {}, 'VPCOptions': {'VPCId': 'vpc-080cdd95ab5181450', 'SubnetIds': ['subnet-0cdbd6322dae8fbc0'], 'AvailabilityZones': ['eu-central-1b'], 'SecurityGroupIds': ['sg-0f719bfac78b44da3']}, 'CognitoOptions': {'Enabled': False}, 'EncryptionAtRestOptions': {'Enabled': True, 'KmsKeyId': 'arn:aws:kms:eu-central-1:123456789012:key/d2d4b256-1603-4ee9-8e4e-ac45c7fd17b5'}, 'NodeToNodeEncryptionOptions': {'Enabled': True}, 'AdvancedOptions': {'indices.fielddata.cache.size': '20', 'indices.query.bool.max_clause_count': '1024', 'override_main_response_version': 'true', 'rest.action.multi.allow_explicit_index': 'true'}, 'ServiceSoftwareOptions': {'CurrentVersion': 'R20211203-P5', 'NewVersion': '', 'UpdateAvailable': True, 'Cancellable': False, 'UpdateStatus': 'ELIGBLE', 'Description': 'An update to release R20211203-P5 has been requested and is pending. Before the update starts, you can cancel it any time.', 'AutomatedUpdateDate': datetime.datetime(2022, 1, 1, 1, 0, tzinfo=tzlocal()), 'OptionalDeployment': True}, 'DomainEndpointOptions': {'EnforceHTTPS': True, 'TLSSecurityPolicy': 'Policy-Min-TLS-1-0-2019-07', 'CustomEndpointEnabled': False}, 'AdvancedSecurityOptions': {'Enabled': True, 'InternalUserDatabaseEnabled': True, 'AnonymousAuthEnabled': False}, 'AutoTuneOptions': {'State': 'ENABLED'}}]}
        stubs['opensearch'].add_response('describe_domains', response, expected_parameters)
        for _, stub in stubs.items():
            stub.activate()
        result = get_pending_maintenance_actions(session)
        self.assertEqual(
            1, len(result), f"expected a single maintenance windows, got {len(result)}|"
        )

        self.assertEqual("cluster-1", result[0].instance_id)
        self.assertEqual("domainid", result[0].instance_type)
        self.assertEqual("opensearch", result[0].service)
        self.assertEqual(
            datetime.datetime(2022, 1, 1, 1, 0, tzinfo=tzlocal()), result[0].not_before
        )
        self.assertEqual(
            'An update to release R20211203-P5 has been requested and is pending. '
            'Before the update starts, you can cancel it any time.', result[0].description
        )


if __name__ == "__main__":
    main()

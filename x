{
    "Reservations": [
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0687a8e4636603029",
                    "InstanceId": "i-085ca0c0372227226",
                    "InstanceType": "c5.xlarge",
                    "LaunchTime": "2022-02-09T04:32:38+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-94.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.94",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-02-09T04:32:39+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0746f009e8d64757f"
                            }
                        },
                        {
                            "DeviceName": "/dev/sda1",
                            "Ebs": {
                                "AttachTime": "2022-02-09T04:32:39+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0dc618b4dddac7958"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdd",
                            "Ebs": {
                                "AttachTime": "2022-02-09T04:33:11+00:00",
                                "DeleteOnTermination": false,
                                "Status": "attached",
                                "VolumeId": "vol-039e57f704160f8b0"
                            }
                        }
                    ],
                    "ClientToken": "4a35fb73-04d7-6d80-fc83-2c11ba8a582f",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbmqecs-EC2InstanceProfile-1PSQMM19JPWWA",
                        "Id": "AIPAIIY52GMCQ4JAOB4XA"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-02-09T04:32:38+00:00",
                                "AttachmentId": "eni-attach-0d2bf7b253654a233",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbmqecs-EcsInstanceSecurityGroup-1TFOUW7AVU5X9",
                                    "GroupId": "sg-0bfa4c962096cfdea"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:b1:13:d6:06:c4",
                            "NetworkInterfaceId": "eni-00555aaac1bd05f2e",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-94.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.94",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-94.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.94"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-02-09T04:33:38+00:00",
                                "AttachmentId": "eni-attach-006ea0d7e50085893",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 2,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/aa82aa30-0835-47b8-bb17-00888bdaecf1",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:af:f5:c0:76:9a",
                            "NetworkInterfaceId": "eni-07df27611781ce81d",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-87.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.87",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-87.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.87"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-02-09T04:33:12+00:00",
                                "AttachmentId": "eni-attach-0fe2247778a6c7d29",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbmqecs-EcsInstanceSecurityGroup-1TFOUW7AVU5X9",
                                    "GroupId": "sg-0bfa4c962096cfdea"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:57:38:b2:e8:48",
                            "NetworkInterfaceId": "eni-0159d00f2bda36243",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-123.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.123",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-123.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.123"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbmqecs-EcsInstanceSecurityGroup-1TFOUW7AVU5X9",
                            "GroupId": "sg-0bfa4c962096cfdea"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:ec2launchtemplate:id",
                            "Value": "lt-054734dc8d183f347"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-mq01.prod-api"
                        },
                        {
                            "Key": "aws:ec2launchtemplate:version",
                            "Value": "32"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prod-api-crdb-mq"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbmqecs/11639ae0-d1e0-11e8-a192-50fafb4f9cae"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "ec2-volume-manager-attachment",
                            "Value": "MQ"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "MQAutoScalingGroup"
                        },
                        {
                            "Key": "network-interface-manager-pool",
                            "Value": "MQ"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbmqecs"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 2,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-02-09T04:32:38+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0a7f902acf761a12d"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0ba8011b7c545c97d",
                    "InstanceId": "i-0c3d3a77f39c8c966",
                    "InstanceType": "t3.micro",
                    "LaunchTime": "2022-02-16T05:14:11+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-1-165.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.1.165",
                    "ProductCodes": [],
                    "PublicDnsName": "ec2-3-120-82-186.eu-central-1.compute.amazonaws.com",
                    "PublicIpAddress": "3.120.82.186",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-e352ed88",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-02-16T05:14:12+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-041d409acfedebe69"
                            }
                        }
                    ],
                    "ClientToken": "41d5fc03-cf10-93b9-e4e4-3a5662d8e4bf",
                    "EbsOptimized": false,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-vpc-BastionInstanceProfile-1H61BSSSRZ1A2",
                        "Id": "AIPAJGEKNMWQDCBPDYWOC"
                    },
                    "NetworkInterfaces": [
                        {
                            "Association": {
                                "IpOwnerId": "205781933585",
                                "PublicDnsName": "ec2-3-120-82-186.eu-central-1.compute.amazonaws.com",
                                "PublicIp": "3.120.82.186"
                            },
                            "Attachment": {
                                "AttachTime": "2022-02-16T05:14:11+00:00",
                                "AttachmentId": "eni-attach-002ec0e33a3fd8ba3",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-vpc-BastionSecurityGroup-10GVYUAEHPMJS",
                                    "GroupId": "sg-f9581c93"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:7e:d7:3b:55:7c",
                            "NetworkInterfaceId": "eni-05bac92632bc51628",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-1-165.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.1.165",
                            "PrivateIpAddresses": [
                                {
                                    "Association": {
                                        "IpOwnerId": "205781933585",
                                        "PublicDnsName": "ec2-3-120-82-186.eu-central-1.compute.amazonaws.com",
                                        "PublicIp": "3.120.82.186"
                                    },
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-1-165.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.1.165"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-e352ed88",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-02-16T05:14:31+00:00",
                                "AttachmentId": "eni-attach-06a99ebb4bd29e0af",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-vpc-BastionSecurityGroup-10GVYUAEHPMJS",
                                    "GroupId": "sg-f9581c93"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:dc:5e:da:0b:96",
                            "NetworkInterfaceId": "eni-7721a322",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-1-5.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.1.5",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-1-5.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.1.5"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-e352ed88",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-vpc-BastionSecurityGroup-10GVYUAEHPMJS",
                            "GroupId": "sg-f9581c93"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "BastionAutoScalingGroup"
                        },
                        {
                            "Key": "elastic-ip-manager-pool",
                            "Value": "prod-api-bastion"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-vpc/aebe2810-d8d9-11e7-9c5f-503f2ad2e536"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-vpc"
                        },
                        {
                            "Key": "Name",
                            "Value": "bastion.prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prod-api-bastion"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "network-interface-manager-pool",
                            "Value": "prod-api-bastion"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-02-16T05:14:11+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0f197c8120c00a6a6"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0ba8011b7c545c97d",
                    "InstanceId": "i-005ffe2a198ac3536",
                    "InstanceType": "t3.micro",
                    "LaunchTime": "2022-02-16T05:14:44+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-2-17.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.2.17",
                    "ProductCodes": [],
                    "PublicDnsName": "ec2-18-196-19-252.eu-central-1.compute.amazonaws.com",
                    "PublicIpAddress": "18.196.19.252",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-c4ad5eb9",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-02-16T05:14:44+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-03ded33140e7bd0d8"
                            }
                        }
                    ],
                    "ClientToken": "ec75fc03-d115-812d-72c2-28a21e3546e6",
                    "EbsOptimized": false,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-vpc-BastionInstanceProfile-1H61BSSSRZ1A2",
                        "Id": "AIPAJGEKNMWQDCBPDYWOC"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-02-16T05:15:07+00:00",
                                "AttachmentId": "eni-attach-036819cf4be853cd8",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-vpc-BastionSecurityGroup-10GVYUAEHPMJS",
                                    "GroupId": "sg-f9581c93"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:98:c3:c6:0f:56",
                            "NetworkInterfaceId": "eni-0bf966b6a0a21320d",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-2-5.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.2.5",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-2-5.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.2.5"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-c4ad5eb9",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Association": {
                                "IpOwnerId": "205781933585",
                                "PublicDnsName": "ec2-18-196-19-252.eu-central-1.compute.amazonaws.com",
                                "PublicIp": "18.196.19.252"
                            },
                            "Attachment": {
                                "AttachTime": "2022-02-16T05:14:44+00:00",
                                "AttachmentId": "eni-attach-0c58682cc0049829e",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-vpc-BastionSecurityGroup-10GVYUAEHPMJS",
                                    "GroupId": "sg-f9581c93"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:5d:37:f8:a6:d6",
                            "NetworkInterfaceId": "eni-0b8033ad0b48c24fb",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-2-17.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.2.17",
                            "PrivateIpAddresses": [
                                {
                                    "Association": {
                                        "IpOwnerId": "205781933585",
                                        "PublicDnsName": "ec2-18-196-19-252.eu-central-1.compute.amazonaws.com",
                                        "PublicIp": "18.196.19.252"
                                    },
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-2-17.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.2.17"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-c4ad5eb9",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-vpc-BastionSecurityGroup-10GVYUAEHPMJS",
                            "GroupId": "sg-f9581c93"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "BastionAutoScalingGroup"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prod-api-bastion"
                        },
                        {
                            "Key": "elastic-ip-manager-pool",
                            "Value": "prod-api-bastion"
                        },
                        {
                            "Key": "network-interface-manager-pool",
                            "Value": "prod-api-bastion"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-vpc"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-vpc/aebe2810-d8d9-11e7-9c5f-503f2ad2e536"
                        },
                        {
                            "Key": "Name",
                            "Value": "bastion.prod-api"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-02-16T05:14:44+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-00bd3847a20059895"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0ec719c48f438470a",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:20:45+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-138.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.138",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:20:46+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-000026b41876190fa"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:20:46+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0f106a34bc58e60ff"
                            }
                        }
                    ],
                    "ClientToken": "f535fd24-4b3f-8587-9ed4-4bd5a43f6d09",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:20:45+00:00",
                                "AttachmentId": "eni-attach-05a76b4325589380b",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-PortalEcsInstanceSecurityGroup-B3SHTG9GAVZM",
                                    "GroupId": "sg-41d90c2c"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:41:8e:bd:1b:34",
                            "NetworkInterfaceId": "eni-09fd0ff194758afd0",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-138.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.138",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-138.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.138"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-PortalEcsInstanceSecurityGroup-B3SHTG9GAVZM",
                            "GroupId": "sg-41d90c2c"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-PortalECSAutoScalingGroup-14KEH6Y7D95JV"
                        },
                        {
                            "Key": "Name",
                            "Value": "portal-ecs-instance.prod-api"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "PortalECSAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:20:45+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0fb24a05d96b489ce"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-09cb0f4cf578afdfd",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:17:56+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-234.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.234",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:17:57+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-01f368aac26e8b1a2"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:17:57+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0bf5def96354c8d8c"
                            }
                        }
                    ],
                    "ClientToken": "2675fd24-40f1-6e23-fa19-9d312ce6c68d",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:17:56+00:00",
                                "AttachmentId": "eni-attach-0447863204158cc54",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                                    "GroupId": "sg-14de0b79"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:54:a8:78:53:88",
                            "NetworkInterfaceId": "eni-089cae3c28a9f1fa0",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-234.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.234",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-234.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.234"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:19:03+00:00",
                                "AttachmentId": "eni-attach-08c7274c601d7797d",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/301f4828-ab65-4f75-ae4b-b09bee2ea1c2",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:6f:c2:8c:21:e4",
                            "NetworkInterfaceId": "eni-0bba3cdffb2f57d4a",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-187.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.187",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-187.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.187"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                            "GroupId": "sg-14de0b79"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "ECSAutoScalingGroup"
                        },
                        {
                            "Key": "Name",
                            "Value": "ecs-instance.prod-api"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-ECSAutoScalingGroup-12ABO4OJS20FX"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:17:56+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-05e973490cd32ba83"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0f9295bc1a32a5dd7",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:25:07+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-249.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.249",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:25:08+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-035eff7f705c00047"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:25:08+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-08434d7b853d75f7d"
                            }
                        }
                    ],
                    "ClientToken": "d965fd24-5b3b-7416-a151-fd74a60ae1f0",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:26:08+00:00",
                                "AttachmentId": "eni-attach-07d4c362a74c0b3b9",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/0b6178ab-84cb-4046-a6b7-0f4cbb776aac",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:0c:6f:de:26:f0",
                            "NetworkInterfaceId": "eni-00589d979a9188df7",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-148.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.148",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-148.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.148"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:25:07+00:00",
                                "AttachmentId": "eni-attach-0357b9db46176e637",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                                    "GroupId": "sg-14de0b79"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:ed:cc:db:fe:10",
                            "NetworkInterfaceId": "eni-025ccffe73c82ff88",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-249.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.249",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-249.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.249"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                            "GroupId": "sg-14de0b79"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "ECSAutoScalingGroup"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "Name",
                            "Value": "ecs-instance.prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-ECSAutoScalingGroup-12ABO4OJS20FX"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:25:07+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-058b17a64cdc44844"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-02eb332274e49420f",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:32:16+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-157.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.157",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:32:16+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0fdacf1fa983b0c0a"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:32:16+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0f0dc259a0f400b70"
                            }
                        }
                    ],
                    "ClientToken": "6f15fd24-7567-7a2c-81ce-a78708e9393a",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbecs-EC2InstanceProfile-YOAJGWP9T22Y",
                        "Id": "AIPAJR6PNBTB437V4GHHU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:33:45+00:00",
                                "AttachmentId": "eni-attach-0e9925343ceb4877e",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/1e1d37d1-0ec2-4ebf-9461-26f5c6339c9c",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:de:99:c4:4e:8c",
                            "NetworkInterfaceId": "eni-0cdd583ecfadda484",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-186.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.186",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-186.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.186"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:32:16+00:00",
                                "AttachmentId": "eni-attach-06f1d9250ecebec19",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                                    "GroupId": "sg-02329be211be4b55e"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:a6:cc:1d:dd:4a",
                            "NetworkInterfaceId": "eni-04a1de0ceb8d3bb1f",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-157.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.157",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-157.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.157"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                            "GroupId": "sg-02329be211be4b55e"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-instance.prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "CRDBAutoScalingGroup"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbecs/217d32a0-d1e1-11e8-8bab-0618926a08a4"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbecs-CRDBAutoScalingGroup-19GFAT4N7T6L7"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbecs"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:32:16+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-008bc1d9d3fc8fd76"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-035c72d42b2fc3ead",
                    "InstanceType": "m5.large",
                    "LaunchTime": "2022-03-02T05:31:39+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-95.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.95",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:31:39+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0ddd5a52bbd3e7caf"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:31:39+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-05a61a3a9f7ff458d"
                            }
                        }
                    ],
                    "ClientToken": "8815fd24-7327-da85-2f03-5a2ef43ef2fc",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-api-ha-EC2InstanceProfile-1A4SV8GXSHAIO",
                        "Id": "AIPAS72MPDYIVVKRFCZTU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:31:39+00:00",
                                "AttachmentId": "eni-attach-06c2affe886bcfe0d",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-api-ha-EcsInstanceSecurityGroup-S62Q9W8P6EHU",
                                    "GroupId": "sg-0c9c9c4a5317ed214"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:f3:93:c5:e7:d6",
                            "NetworkInterfaceId": "eni-03399b84bd5753007",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-95.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.95",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-95.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.95"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:32:46+00:00",
                                "AttachmentId": "eni-attach-0ec496ac079e3c3dc",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/f4a10628-02e2-4a98-9959-a56d07ebdeaa",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:8f:fa:11:69:aa",
                            "NetworkInterfaceId": "eni-0a75d844fc78e8264",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-60.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.60",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-60.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.60"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-api-ha-EcsInstanceSecurityGroup-S62Q9W8P6EHU",
                            "GroupId": "sg-0c9c9c4a5317ed214"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "service",
                            "Value": "ha"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "HAAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs-api-ha"
                        },
                        {
                            "Key": "component-type",
                            "Value": "ec2"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-api-ha-HAAutoScalingGroup-74B0M5E98LOV"
                        },
                        {
                            "Key": "costcentre",
                            "Value": "general"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs-api-ha/e2f340d0-41ed-11ec-b692-022dc9291196"
                        },
                        {
                            "Key": "Name",
                            "Value": "api-ha.prod-api"
                        },
                        {
                            "Key": "component",
                            "Value": "infrastructure"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:31:39+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-041ee0b44ee26aa59"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0252888113b8f3013",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:32:00+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-19.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.19",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:32:01+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-02a9e0ce17233c2c2"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:32:01+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-07ec2b4acfa448d2b"
                            }
                        }
                    ],
                    "ClientToken": "36d5fd24-7474-50c0-3663-81bafce7a15b",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-data-provider-EC2InstanceProfile-XI6P5WO3P9XL",
                        "Id": "AIPAS72MPDYISW4JUWK6K"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:32:00+00:00",
                                "AttachmentId": "eni-attach-03d915cd930de7eae",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-data-provider-EcsInstanceSecurityGroup-15I23OJMRYNHC",
                                    "GroupId": "sg-04a5cecb440030cab"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:6f:c9:1d:08:62",
                            "NetworkInterfaceId": "eni-051ea901f0f693058",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-19.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.19",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-19.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.19"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-data-provider-EcsInstanceSecurityGroup-15I23OJMRYNHC",
                            "GroupId": "sg-04a5cecb440030cab"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Name",
                            "Value": "data-provider.prod-api"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-data-provider-DataProviderAutoScalingGroup-1TSFZ2OSZWUPT"
                        },
                        {
                            "Key": "service",
                            "Value": "data-provider"
                        },
                        {
                            "Key": "component",
                            "Value": "infrastructure"
                        },
                        {
                            "Key": "costcentre",
                            "Value": "general"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs-data-provider/3fb86180-4ce6-11ec-b5d3-02cc4c27e91e"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "DataProviderAutoScalingGroup"
                        },
                        {
                            "Key": "component-type",
                            "Value": "ec2"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs-data-provider"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:32:00+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-05022706c752b5fef"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0f8221a391370c32b",
                    "InstanceType": "t3.medium",
                    "LaunchTime": "2022-03-02T05:50:15+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1c",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-6-118.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.6.118",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-787dde35",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:50:16+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0358d7c0baec2acbf"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:50:16+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-081b1b181fcaf9031"
                            }
                        }
                    ],
                    "ClientToken": "f095fd24-b749-abe7-e099-6527e0386fb8",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbenumdns-EC2InstanceProfile-1IAJ98GPJ480C",
                        "Id": "AIPAS72MPDYIS3Q3PDOY3"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:50:15+00:00",
                                "AttachmentId": "eni-attach-07604a3f23cfe88e5",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:a9:b8:bf:16:2c",
                            "NetworkInterfaceId": "eni-0800d971fcef78da7",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-118.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.118",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-118.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.118"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:51:25+00:00",
                                "AttachmentId": "eni-attach-000e94a6e96da78bf",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/4ad7a624-8be8-4bc0-97fe-57ca8f228356",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:e5:62:f5:a9:88",
                            "NetworkInterfaceId": "eni-062290e0693803a55",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-242.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.242",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-242.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.242"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:51:30+00:00",
                                "AttachmentId": "eni-attach-0619f656371e19613",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 2,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/9e920f20-e8ce-4675-b89b-ce785ecc3a0c",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "0a:a5:3d:56:4c:16",
                            "NetworkInterfaceId": "eni-0dba351387dc2661b",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-6-83.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.6.83",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-6-83.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.6.83"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-787dde35",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                            "GroupId": "sg-07bfd02f0f20b4baa"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbenumdns-EnumAutoScalingGroup-RUGCAI2W84JJ"
                        },
                        {
                            "Key": "aws:ec2launchtemplate:id",
                            "Value": "lt-0a6f4c714377646be"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbenumdns/848d56f0-db76-11e9-925f-061d64a5b024"
                        },
                        {
                            "Key": "aws:ec2launchtemplate:version",
                            "Value": "42"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-enum.prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "EnumAutoScalingGroup"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbenumdns"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:50:15+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0697f104aa7958e6d"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0fb382c0117b5e24e",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:18:03+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-54.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.54",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:18:04+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0a1222ab48f7ac8c1"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:18:04+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0c6ce6794bb8dbc06"
                            }
                        }
                    ],
                    "ClientToken": "c275fd24-4161-d7ce-b9a0-26934494b968",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:18:03+00:00",
                                "AttachmentId": "eni-attach-0da575b71a2b2c890",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-PortalEcsInstanceSecurityGroup-B3SHTG9GAVZM",
                                    "GroupId": "sg-41d90c2c"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:64:d3:68:77:a2",
                            "NetworkInterfaceId": "eni-0a43e770f521803f8",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-54.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.54",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-54.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.54"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-PortalEcsInstanceSecurityGroup-B3SHTG9GAVZM",
                            "GroupId": "sg-41d90c2c"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-PortalECSAutoScalingGroup-14KEH6Y7D95JV"
                        },
                        {
                            "Key": "Name",
                            "Value": "portal-ecs-instance.prod-api"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "PortalECSAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:18:03+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-03e6229d4c870cf31"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-05a6ad106e32c47f8",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:20:41+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-220.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.220",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:20:42+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0bf3c12339fea3b00"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:20:42+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-060d1ee3a68506305"
                            }
                        }
                    ],
                    "ClientToken": "cfe5fd24-4b0a-1eb9-2a0c-8a21d510f702",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:20:41+00:00",
                                "AttachmentId": "eni-attach-0626bf8109a62e6e1",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                                    "GroupId": "sg-14de0b79"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:08:be:f8:29:66",
                            "NetworkInterfaceId": "eni-0c14c6f9b127c13b8",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-220.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.220",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-220.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.220"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:21:49+00:00",
                                "AttachmentId": "eni-attach-0d561e595836c5045",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/7013118d-0f75-48d4-a518-abb8fd3046b5",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:07:85:9c:03:1a",
                            "NetworkInterfaceId": "eni-024bc232d30f4c9f6",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-105.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.105",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-105.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.105"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                            "GroupId": "sg-14de0b79"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "Name",
                            "Value": "ecs-instance.prod-api"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-ECSAutoScalingGroup-12ABO4OJS20FX"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "ECSAutoScalingGroup"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:20:41+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-006b3752d2b56c97d"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-08ebfc10a59c3c285",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:29:08+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-6.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.6",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:08+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0d071628ca9946cf1"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:08+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0e1f856cbd136eac7"
                            }
                        }
                    ],
                    "ClientToken": "a775fd24-69ee-e1f5-5b14-4e8c946e4ffc",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-data-provider-EC2InstanceProfile-XI6P5WO3P9XL",
                        "Id": "AIPAS72MPDYISW4JUWK6K"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:29:08+00:00",
                                "AttachmentId": "eni-attach-01f7a40810a7b7959",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-data-provider-EcsInstanceSecurityGroup-15I23OJMRYNHC",
                                    "GroupId": "sg-04a5cecb440030cab"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:2f:0b:c8:b8:34",
                            "NetworkInterfaceId": "eni-06c1f85eec796e8d1",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-6.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.6",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-6.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.6"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-data-provider-EcsInstanceSecurityGroup-15I23OJMRYNHC",
                            "GroupId": "sg-04a5cecb440030cab"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-data-provider-DataProviderAutoScalingGroup-1TSFZ2OSZWUPT"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs-data-provider/3fb86180-4ce6-11ec-b5d3-02cc4c27e91e"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "DataProviderAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs-data-provider"
                        },
                        {
                            "Key": "component-type",
                            "Value": "ec2"
                        },
                        {
                            "Key": "Name",
                            "Value": "data-provider.prod-api"
                        },
                        {
                            "Key": "service",
                            "Value": "data-provider"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "costcentre",
                            "Value": "general"
                        },
                        {
                            "Key": "component",
                            "Value": "infrastructure"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:29:08+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0b25ee7663d947c33"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0b6b7824e24d6cae3",
                    "InstanceType": "m5.large",
                    "LaunchTime": "2022-03-02T05:29:27+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-237.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.237",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:27+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0ddf5ad409301f9a5"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:27+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0eebc45bb6c411cab"
                            }
                        }
                    ],
                    "ClientToken": "9f25fd24-6b17-12b5-15e2-fa96f81f8ef9",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-api-ha-EC2InstanceProfile-1A4SV8GXSHAIO",
                        "Id": "AIPAS72MPDYIVVKRFCZTU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:29:27+00:00",
                                "AttachmentId": "eni-attach-0bae5f808590be9db",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-api-ha-EcsInstanceSecurityGroup-S62Q9W8P6EHU",
                                    "GroupId": "sg-0c9c9c4a5317ed214"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:66:5a:28:38:34",
                            "NetworkInterfaceId": "eni-0f853dce2d2de2d0d",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-237.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.237",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-237.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.237"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:30:32+00:00",
                                "AttachmentId": "eni-attach-00344e03a6982f715",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/7b720170-6b2c-4e3b-a976-69841418842c",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:82:43:ca:6b:d8",
                            "NetworkInterfaceId": "eni-03e7b2f77fa3a65e3",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-232.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.232",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-232.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.232"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-api-ha-EcsInstanceSecurityGroup-S62Q9W8P6EHU",
                            "GroupId": "sg-0c9c9c4a5317ed214"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "costcentre",
                            "Value": "general"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-api-ha-HAAutoScalingGroup-74B0M5E98LOV"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs-api-ha/e2f340d0-41ed-11ec-b692-022dc9291196"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "service",
                            "Value": "ha"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "HAAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs-api-ha"
                        },
                        {
                            "Key": "component-type",
                            "Value": "ec2"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "Name",
                            "Value": "api-ha.prod-api"
                        },
                        {
                            "Key": "component",
                            "Value": "infrastructure"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:29:27+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-021c8601a5c7d0d0f"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-07fd0e29db7bc3156",
                    "InstanceType": "t3.medium",
                    "LaunchTime": "2022-03-02T05:47:50+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-48.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.48",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:47:51+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0b395a6827b3b22db"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:47:51+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0fc25f926a2a5e072"
                            }
                        }
                    ],
                    "ClientToken": "d4a5fd24-ae6d-2b33-fdee-e09d23bd483a",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbenumdns-EC2InstanceProfile-1IAJ98GPJ480C",
                        "Id": "AIPAS72MPDYIS3Q3PDOY3"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:49:41+00:00",
                                "AttachmentId": "eni-attach-0260b826ce4d55f38",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 2,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/7c541989-0955-4942-9b85-746882dce1c3",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:e7:d5:0d:23:7e",
                            "NetworkInterfaceId": "eni-0b682e0521c8dcc9d",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-215.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.215",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-215.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.215"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:47:50+00:00",
                                "AttachmentId": "eni-attach-0bc727f9b0859f9f3",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:3a:f1:da:c8:e2",
                            "NetworkInterfaceId": "eni-00ce8cead20cbd0d4",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-48.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.48",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-48.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.48"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:49:34+00:00",
                                "AttachmentId": "eni-attach-0f9665803a9fdbad9",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/29551c53-fafc-482f-862c-f2f468c4f308",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:56:21:9e:b0:5a",
                            "NetworkInterfaceId": "eni-0c01a38a6aa1c4ca7",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-118.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.118",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-118.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.118"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                            "GroupId": "sg-07bfd02f0f20b4baa"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:ec2launchtemplate:version",
                            "Value": "42"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbenumdns/848d56f0-db76-11e9-925f-061d64a5b024"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbenumdns-EnumAutoScalingGroup-RUGCAI2W84JJ"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "EnumAutoScalingGroup"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbenumdns"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-enum.prod-api"
                        },
                        {
                            "Key": "aws:ec2launchtemplate:id",
                            "Value": "lt-0a6f4c714377646be"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:47:50+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-01be456f3c0b1eb60"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-05b3d44fe1ee46ec5",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:30:29+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-70.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.70",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:30+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-036dadce2975d3258"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:30+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-077d101d64647b050"
                            }
                        }
                    ],
                    "ClientToken": "3025fd24-6ee3-a265-c68c-03c2f09fdaf0",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbecs-EC2InstanceProfile-YOAJGWP9T22Y",
                        "Id": "AIPAJR6PNBTB437V4GHHU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:30:29+00:00",
                                "AttachmentId": "eni-attach-096abcdc99adb2ec1",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                                    "GroupId": "sg-02329be211be4b55e"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:4c:c9:28:dc:ce",
                            "NetworkInterfaceId": "eni-09f3544a41e7588ff",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-70.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.70",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-70.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.70"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                            "GroupId": "sg-02329be211be4b55e"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbecs/217d32a0-d1e1-11e8-8bab-0618926a08a4"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbecs"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "CrushFTPAutoScalingGroup"
                        },
                        {
                            "Key": "Name",
                            "Value": "crushftp.prod-api"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbecs-CrushFTPAutoScalingGroup-AXDAPPJMJB30"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:30:29+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0cff6dec235e7558b"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0b49c70fbed11099a",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:29:05+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1a",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-4-108.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.4.108",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-bd52edd6",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:06+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0369657579c0270e8"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:06+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-059d6d67ee419ca6f"
                            }
                        }
                    ],
                    "ClientToken": "f8c5fd24-69c3-3154-29b8-64acb6787d3d",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbecs-EC2InstanceProfile-YOAJGWP9T22Y",
                        "Id": "AIPAJR6PNBTB437V4GHHU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:29:05+00:00",
                                "AttachmentId": "eni-attach-05271ee4f0daf33f1",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                                    "GroupId": "sg-02329be211be4b55e"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:c5:3f:fd:9c:90",
                            "NetworkInterfaceId": "eni-02b10a24b29f30a95",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-108.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.108",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-108.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.108"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:30:48+00:00",
                                "AttachmentId": "eni-attach-0deb87ad33d8088c6",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/aab1b3a5-71b5-46bb-af39-15703cf4b64e",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "02:f0:e0:b2:87:40",
                            "NetworkInterfaceId": "eni-0d22ef200204e413b",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-4-197.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.4.197",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-4-197.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.4.197"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-bd52edd6",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                            "GroupId": "sg-02329be211be4b55e"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "CRDBAutoScalingGroup"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-instance.prod-api"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbecs/217d32a0-d1e1-11e8-8bab-0618926a08a4"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbecs-CRDBAutoScalingGroup-19GFAT4N7T6L7"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbecs"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:29:05+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-09cbe5b0381dcbfa3"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0a3637f4a500886c4",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:19:38+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-171.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.171",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:19:39+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0dbbfe39835b6a912"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:19:39+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0cf1921f8df975a4a"
                            }
                        }
                    ],
                    "ClientToken": "b535fd24-472d-f52d-dcb0-511e9a574111",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:19:38+00:00",
                                "AttachmentId": "eni-attach-0678d5f42efbe63a3",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-PortalEcsInstanceSecurityGroup-B3SHTG9GAVZM",
                                    "GroupId": "sg-41d90c2c"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:88:b4:d2:45:7e",
                            "NetworkInterfaceId": "eni-02a85431f5dd9b267",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-171.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.171",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-171.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.171"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-PortalEcsInstanceSecurityGroup-B3SHTG9GAVZM",
                            "GroupId": "sg-41d90c2c"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "PortalECSAutoScalingGroup"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-PortalECSAutoScalingGroup-14KEH6Y7D95JV"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "Name",
                            "Value": "portal-ecs-instance.prod-api"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:19:38+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0108fe6e306a69d15"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0235c69849edb2ca6",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:30:45+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-49.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.49",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:45+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-079373e7e2acb3e08"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:45+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0feac6782f788f489"
                            }
                        }
                    ],
                    "ClientToken": "5305fd24-6fdc-90ec-76fc-219bb987541d",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbecs-EC2InstanceProfile-YOAJGWP9T22Y",
                        "Id": "AIPAJR6PNBTB437V4GHHU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:30:45+00:00",
                                "AttachmentId": "eni-attach-08d37ba845e0164e2",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                                    "GroupId": "sg-02329be211be4b55e"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:ad:6f:12:29:68",
                            "NetworkInterfaceId": "eni-0c210eb1e0a266022",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-49.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.49",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-49.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.49"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:32:14+00:00",
                                "AttachmentId": "eni-attach-0130541c32892e100",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/903789e5-1bf2-4b04-9ddc-e1f027a665a8",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:46:a8:3e:fd:be",
                            "NetworkInterfaceId": "eni-000fcfcda5066d21f",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-81.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.81",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-81.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.81"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                            "GroupId": "sg-02329be211be4b55e"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbecs-CRDBAutoScalingGroup-19GFAT4N7T6L7"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "CRDBAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbecs"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbecs/217d32a0-d1e1-11e8-8bab-0618926a08a4"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-instance.prod-api"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:30:45+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-05dfdd92d901f4d05"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0dabe6fc73df66d47",
                    "InstanceType": "m5.large",
                    "LaunchTime": "2022-03-02T05:30:48+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-230.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.230",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:48+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0811d5211c23c3eb6"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:48+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-07977df9ad68df9ab"
                            }
                        }
                    ],
                    "ClientToken": "5785fd24-700c-609b-a17d-53c98c86de23",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-api-ha-EC2InstanceProfile-1A4SV8GXSHAIO",
                        "Id": "AIPAS72MPDYIVVKRFCZTU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:30:48+00:00",
                                "AttachmentId": "eni-attach-00be02f5e868adfdb",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-api-ha-EcsInstanceSecurityGroup-S62Q9W8P6EHU",
                                    "GroupId": "sg-0c9c9c4a5317ed214"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:ea:8d:8a:01:e4",
                            "NetworkInterfaceId": "eni-08c636fae766f5b50",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-230.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.230",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-230.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.230"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:31:21+00:00",
                                "AttachmentId": "eni-attach-0407ebcc5499ef63e",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/325101b8-5535-48ca-8e0f-6833a9e26715",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:d4:9e:1f:ad:fe",
                            "NetworkInterfaceId": "eni-0a953b52d5bd79c8f",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-206.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.206",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-206.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.206"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-api-ha-EcsInstanceSecurityGroup-S62Q9W8P6EHU",
                            "GroupId": "sg-0c9c9c4a5317ed214"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "HAAutoScalingGroup"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs-api-ha/e2f340d0-41ed-11ec-b692-022dc9291196"
                        },
                        {
                            "Key": "Name",
                            "Value": "api-ha.prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-api-ha-HAAutoScalingGroup-74B0M5E98LOV"
                        },
                        {
                            "Key": "component",
                            "Value": "infrastructure"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs-api-ha"
                        },
                        {
                            "Key": "component-type",
                            "Value": "ec2"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "costcentre",
                            "Value": "general"
                        },
                        {
                            "Key": "service",
                            "Value": "ha"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:30:48+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0daf086c9df3c33ea"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0f4e2bd178060305f",
                    "InstanceType": "r5.large",
                    "LaunchTime": "2022-03-02T05:22:54+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-193.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.193",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:22:55+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0a4385a25b2f7892f"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:22:55+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-05e248e8c9306acfc"
                            }
                        }
                    ],
                    "ClientToken": "b9b5fd24-5321-dd8c-be6c-6d46f341472c",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-EC2InstanceProfile-RESJR4AUCJAY",
                        "Id": "AIPAIWKOLFAQ5YAF2UPU2"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:22:54+00:00",
                                "AttachmentId": "eni-attach-09eb7cd5035db4205",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                                    "GroupId": "sg-14de0b79"
                                },
                                {
                                    "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                                    "GroupId": "sg-952b42ff"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:f4:bd:7a:f7:74",
                            "NetworkInterfaceId": "eni-0ce7b9989f82889a0",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-193.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.193",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-193.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.193"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:24:01+00:00",
                                "AttachmentId": "eni-attach-05c1705ebc191a1b5",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/9632fa4b-b1ec-4c52-b07b-505af63341df",
                            "Groups": [
                                {
                                    "GroupName": "default",
                                    "GroupId": "sg-9c2b42f6"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:2c:98:e3:6e:0a",
                            "NetworkInterfaceId": "eni-06837484217dfb547",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-204.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.204",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-204.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.204"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "trunk"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-EcsInstanceSecurityGroup-MYIQRO70GVNE",
                            "GroupId": "sg-14de0b79"
                        },
                        {
                            "GroupName": "prodapi-vpc-DefaultSecurityGroup-BNB3IDXZD40K",
                            "GroupId": "sg-952b42ff"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Name",
                            "Value": "ecs-instance.prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-ECSAutoScalingGroup-12ABO4OJS20FX"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs/9f2ef0d0-d8ea-11e7-b912-500c44f62262"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "ECSAutoScalingGroup"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:22:54+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0a3e81e2868f4ac00"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-074e0ccac2081e25e",
                    "InstanceType": "t3.medium",
                    "LaunchTime": "2022-03-02T05:28:35+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-192.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.192",
                    "ProductCodes": [],
                    "PublicDnsName": "ec2-54-93-184-231.eu-central-1.compute.amazonaws.com",
                    "PublicIpAddress": "54.93.184.231",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:28:35+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-09166fc97470c5f7e"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:28:35+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-017f161ba81d0a8b3"
                            }
                        }
                    ],
                    "ClientToken": "6f85fd24-67ec-01fb-a900-25523ad1d1e7",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ebms-EC2InstanceProfile-9R9DPV3WBRZG",
                        "Id": "AIPAIRLWTGREFB2ZMCYU4"
                    },
                    "NetworkInterfaces": [
                        {
                            "Association": {
                                "IpOwnerId": "amazon",
                                "PublicDnsName": "ec2-54-93-184-231.eu-central-1.compute.amazonaws.com",
                                "PublicIp": "54.93.184.231"
                            },
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:28:35+00:00",
                                "AttachmentId": "eni-attach-021c083dd07e1a7a4",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ebms-EcsInstanceSecurityGroup-K8R2M1DN5YK9",
                                    "GroupId": "sg-071dba198e3b07263"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:e5:7e:f5:fb:96",
                            "NetworkInterfaceId": "eni-021920b99fa236b70",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-192.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.192",
                            "PrivateIpAddresses": [
                                {
                                    "Association": {
                                        "IpOwnerId": "amazon",
                                        "PublicDnsName": "ec2-54-93-184-231.eu-central-1.compute.amazonaws.com",
                                        "PublicIp": "54.93.184.231"
                                    },
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-192.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.192"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ebms-EcsInstanceSecurityGroup-K8R2M1DN5YK9",
                            "GroupId": "sg-071dba198e3b07263"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Name",
                            "Value": "ebms.prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ebms"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ebms/b0cc11c0-d1e5-11e8-a7c9-50a68ae71462"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ebms-EBMSAutoScalingGroup-TDSZCM83Y452"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "EBMSAutoScalingGroup"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:28:35+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0cb8fc721ea9d83bf"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-090bdc8981efd2e8a",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:30:43+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-151.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.151",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:44+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0892c15cbf08aff04"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:30:44+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-00bd93cd2a64d20c4"
                            }
                        }
                    ],
                    "ClientToken": "8635fd24-6fc5-45dc-faa0-88bb44403172",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-ecs-data-provider-EC2InstanceProfile-XI6P5WO3P9XL",
                        "Id": "AIPAS72MPDYISW4JUWK6K"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:30:43+00:00",
                                "AttachmentId": "eni-attach-0b08ae43f7db5d672",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-ecs-data-provider-EcsInstanceSecurityGroup-15I23OJMRYNHC",
                                    "GroupId": "sg-04a5cecb440030cab"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:28:87:e0:24:fe",
                            "NetworkInterfaceId": "eni-0b1866a4aca6898a7",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-151.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.151",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-151.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.151"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-ecs-data-provider-EcsInstanceSecurityGroup-15I23OJMRYNHC",
                            "GroupId": "sg-04a5cecb440030cab"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "DataProviderAutoScalingGroup"
                        },
                        {
                            "Key": "Name",
                            "Value": "data-provider.prod-api"
                        },
                        {
                            "Key": "costcentre",
                            "Value": "general"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-ecs-data-provider"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-ecs-data-provider/3fb86180-4ce6-11ec-b5d3-02cc4c27e91e"
                        },
                        {
                            "Key": "component-type",
                            "Value": "ec2"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-ecs-data-provider-DataProviderAutoScalingGroup-1TSFZ2OSZWUPT"
                        },
                        {
                            "Key": "component",
                            "Value": "infrastructure"
                        },
                        {
                            "Key": "service",
                            "Value": "data-provider"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:30:43+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-048029153e7932fa6"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-00d666d41242aac47",
                    "InstanceType": "t3.large",
                    "LaunchTime": "2022-03-02T05:29:07+00:00",
                    "Monitoring": {
                        "State": "enabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-190.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.190",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:08+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0105e992d65b1cb2d"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:29:08+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0c840b201e2774aa4"
                            }
                        }
                    ],
                    "ClientToken": "37a5fd24-69e1-6f96-02ce-a7ccfaf3505d",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbecs-EC2InstanceProfile-YOAJGWP9T22Y",
                        "Id": "AIPAJR6PNBTB437V4GHHU"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:29:07+00:00",
                                "AttachmentId": "eni-attach-0a73d82141f7b91d9",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                                    "GroupId": "sg-02329be211be4b55e"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:73:97:68:11:18",
                            "NetworkInterfaceId": "eni-0ec0a8326a10891e5",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-190.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.190",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-190.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.190"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbecs-EcsInstanceSecurityGroup-ZSFY765TAL7H",
                            "GroupId": "sg-02329be211be4b55e"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "CrushFTPAutoScalingGroup"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbecs-CrushFTPAutoScalingGroup-AXDAPPJMJB30"
                        },
                        {
                            "Key": "Name",
                            "Value": "crushftp.prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbecs/217d32a0-d1e1-11e8-8bab-0618926a08a4"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbecs"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:29:07+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0bf5e53057685d8a3"
        },
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-0b9e5df65de916cf7",
                    "InstanceId": "i-0cc7373766c045044",
                    "InstanceType": "t3.medium",
                    "LaunchTime": "2022-03-02T05:49:23+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "eu-central-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-10-2-5-189.eu-central-1.compute.internal",
                    "PrivateIpAddress": "10.2.5.189",
                    "ProductCodes": [],
                    "PublicDnsName": "",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-74ae5d09",
                    "VpcId": "vpc-41e3082a",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/xvda",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:49:24+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-083c1fe24aaaca6bc"
                            }
                        },
                        {
                            "DeviceName": "/dev/xvdcz",
                            "Ebs": {
                                "AttachTime": "2022-03-02T05:49:24+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-0b0e05a11b8b1579b"
                            }
                        }
                    ],
                    "ClientToken": "c305fd24-b41b-22cc-bdff-34beae864d92",
                    "EbsOptimized": true,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "IamInstanceProfile": {
                        "Arn": "arn:aws:iam::205781933585:instance-profile/prodapi-crdbenumdns-EC2InstanceProfile-1IAJ98GPJ480C",
                        "Id": "AIPAS72MPDYIS3Q3PDOY3"
                    },
                    "NetworkInterfaces": [
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:49:23+00:00",
                                "AttachmentId": "eni-attach-0a32bf2e0f7605159",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                },
                                {
                                    "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                                    "GroupId": "sg-091dad6511b0fdbd5"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:61:83:06:ab:ec",
                            "NetworkInterfaceId": "eni-03ef4249ad838567a",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-189.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.189",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-189.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.189"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:50:04+00:00",
                                "AttachmentId": "eni-attach-079a2b9d1b1efc62f",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 2,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/351bf246-b01e-4243-8d1f-52713d9a58ea",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:f8:be:a1:61:3c",
                            "NetworkInterfaceId": "eni-0c75992a29a7cbdcc",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-8.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.8",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-8.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.8"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        },
                        {
                            "Attachment": {
                                "AttachTime": "2022-03-02T05:50:00+00:00",
                                "AttachmentId": "eni-attach-0d865b17505c9bf60",
                                "DeleteOnTermination": false,
                                "DeviceIndex": 1,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "arn:aws:ecs:eu-central-1:205781933585:attachment/6cf78f44-c1b5-4a0b-b623-1e99332a915e",
                            "Groups": [
                                {
                                    "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                                    "GroupId": "sg-07bfd02f0f20b4baa"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "06:bc:df:94:8e:ec",
                            "NetworkInterfaceId": "eni-05e3aee39ba7f8819",
                            "OwnerId": "205781933585",
                            "PrivateDnsName": "ip-10-2-5-70.eu-central-1.compute.internal",
                            "PrivateIpAddress": "10.2.5.70",
                            "PrivateIpAddresses": [
                                {
                                    "Primary": true,
                                    "PrivateDnsName": "ip-10-2-5-70.eu-central-1.compute.internal",
                                    "PrivateIpAddress": "10.2.5.70"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-74ae5d09",
                            "VpcId": "vpc-41e3082a",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/xvda",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "prodapi-crdbenumdns-SecurityGroup-OEHNDBT7AOED",
                            "GroupId": "sg-07bfd02f0f20b4baa"
                        },
                        {
                            "GroupName": "prodapi-vpc-CRDBAccessSecurityGroup-AJ819K544E1U",
                            "GroupId": "sg-091dad6511b0fdbd5"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "aws:ec2launchtemplate:version",
                            "Value": "42"
                        },
                        {
                            "Key": "aws:cloudformation:stack-name",
                            "Value": "prodapi-crdbenumdns"
                        },
                        {
                            "Key": "aws:ec2launchtemplate:id",
                            "Value": "lt-0a6f4c714377646be"
                        },
                        {
                            "Key": "Name",
                            "Value": "crdb-enum.prod-api"
                        },
                        {
                            "Key": "aws:cloudformation:stack-id",
                            "Value": "arn:aws:cloudformation:eu-central-1:205781933585:stack/prodapi-crdbenumdns/848d56f0-db76-11e9-925f-061d64a5b024"
                        },
                        {
                            "Key": "Environment",
                            "Value": "prod"
                        },
                        {
                            "Key": "aws:cloudformation:logical-id",
                            "Value": "EnumAutoScalingGroup"
                        },
                        {
                            "Key": "DomainName",
                            "Value": "prod-api"
                        },
                        {
                            "Key": "ExternalDomainName",
                            "Value": "api.coin.nl"
                        },
                        {
                            "Key": "aws:autoscaling:groupName",
                            "Value": "prodapi-crdbenumdns-EnumAutoScalingGroup-RUGCAI2W84JJ"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 2
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "optional",
                        "HttpPutResponseHopLimit": 1,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2022-03-02T05:49:23+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    }
                }
            ],
            "OwnerId": "205781933585",
            "RequesterId": "053592188284",
            "ReservationId": "r-0e8d36376de2bc629"
        }
    ]
}

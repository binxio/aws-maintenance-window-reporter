# AWS maintenance window reporter
This utility reports upcoming maintenance actions and active maintenance windows across EC2,
RDS, Redshift and Opensearch.

```bash
$ aws-maintenance-windows
INFO: Maintenance window of ec2 instance-id i-22222222222222222: The instance is running on degraded hardware on 2022-03-28 00:00:00+00:00
INFO: Maintenance window of rds dbclusteridentifier db: Upgrade to Aurora PostgreSQL 2.9.2 on 2022-03-16 04:00:00+00:00
INFO: Maintenance action available for opensearch domainid es: A newer release R20211203-P4 is available.
INFO: Maintenance windows of opensearch domainid es-2: An update to release R20211203-P5 has been requested and is pending. Before the update starts, you can cancel it any time on 2022-03-20 00:00:00+00:00
```

## install
To install the AWS maintenance window reporter, type:

```
pip install aws-maintenance-window-reporter
```

## deploy
To deploy the maintenance window reporter as an AWS Lambda, type:

```sh
git clone https://github.com/binxio/aws-maintenance-window-reporter.git
cd aws-maintenance-window-reporter
read -p 'DD_API_KEY >' DD_API_KEY
aws cloudformation deploy \
	--capabilities CAPABILITY_IAM \
	--stack-name aws-maintenance-window-reporter \
	--template-file ./cloudformation/aws-maintenance-window-reporter.yaml \ 
	--parameter-overrides DataDogAPIKey=$DD_API_KEY
```
This will install the maintenance window reporter in your AWS account and run every hour.


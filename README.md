# AWS maintenance window reporter


## Name
```
   aws-maintenance-windows - reports upcoming maintenance actions and windows
```
## Synopsis
```
   aws-maintenance-windows [--send-metrics]
```

## Options
```
    --send-metrics - send the metrics to DataDog
```
## Description
This utility counts the number of upcoming maintenance actions and active maintenance windows 
across EC2, RDS, Redshift and Opensearch. If --send-metrics is specified, the metrics 
are send to DataDog. This allows you to create alerts to notift you whenever a maintenance 
windows is pending.

The metrics send are:

- aws.pending.maintenance.actions

  number of available maintenance actions

- aws.pending.maintenance.windows 

  number of scheduled maintenance windows

the metrics will be tagged with the aws service name and the following resource ids:

- domainid (opensearch)
- dbinstanceidentifier (rds)
- dbclusteridentifier (rds)
- instance-id (ec2)
- clusteridentifier (opensearch)

These tags are in accordance with the AWS tags defined by DataDog for the respective resources.
   
## Examples
```shell
$ aws-maintenance-windows
INFO: Maintenance window of ec2 instance-id i-22222222222222222: The instance is running on degraded hardware on 2022-03-28 00:00:00+00:00
INFO: Maintenance window of rds dbclusteridentifier db: Upgrade to Aurora PostgreSQL 2.9.2 on 2022-03-16 04:00:00+00:00
INFO: Maintenance action available for opensearch domainid es: A newer release R20211203-P4 is available.
INFO: Maintenance windows of opensearch domainid es-2: An update to release R20211203-P5 has been requested and is pending. Before the update starts, you can cancel it any time on 2022-03-20 00:00:00+00:00
```

## Environment
- DD_API_KEY

  Specifies the Datadog API key. if the value has the prefix ssm:// the api key will be  retrieved 
  by name the SSM Parameter Store eg (ssm://datadog-api-key)

- DATADOG_TAGS

  additional datadog tags to add to the metric in the form key:value,key2:value,...            
             
## Alternatives
The AWS Health services also provides insight into scheduled changes. The AWS Health API 
is only available for accounts with a support contract.

## Install
To install the AWS maintenance window reporter, type:

```shell
pip install aws-maintenance-window-reporter
```

## Deploy
To deploy the maintenance window reporter as an AWS Lambda, type:

```shell
git clone https://github.com/binxio/aws-maintenance-window-reporter.git
cd aws-maintenance-window-reporter
read -p 'DD API key >' DD_API_KEY
aws cloudformation deploy \
	--capabilities CAPABILITY_IAM \
	--stack-name aws-maintenance-window-reporter \
	--template-file ./cloudformation/aws-maintenance-window-reporter.yaml \ 
	--parameter-overrides "DataDogAPIKey=$DD_API_KEY"
```
This will install the maintenance window reporter in your AWS account and run every hour.


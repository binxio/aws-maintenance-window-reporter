# AWS maintenance window reporter
This utility reports outstanding maintenance window actions.

## deploy the maintenance window reporter
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


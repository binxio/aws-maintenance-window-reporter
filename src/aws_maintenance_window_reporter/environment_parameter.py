import os
import boto3


_api_key:str = None

def get() -> str:
    if _api_key:
        return _api_key

    result = os.getenv("DD_API_KEY")
    if os.startswith("ssm://"):
        boto3.client("ssm").get_parameter()


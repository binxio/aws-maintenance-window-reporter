"""
retrieve environment variables and resolve references to AWS Parameter Store Parameters.
"""
from typing import Dict
import os
import boto3


def get(name: str, session: boto3.session.Session) -> str:
    """
    gets the environment variable value specified by `name`. if the `value`
    starts with ssm://, it will return the value of the SSM parameter with the specified name.

    The resulting value is cached, so subsequent requests will return the same value.
    """
    if name in _cache:
        return _cache[name]

    value = os.getenv(name)
    if value and value.startswith("ssm://"):
        response = session.client("ssm").get_parameter(
            Name=value[6:], WithDecryption=True
        )
        value = response["Parameter"]["Value"]

    _cache[name] = value
    return value


# cache of retrieved environment variables
_cache: Dict[str, str] = {}

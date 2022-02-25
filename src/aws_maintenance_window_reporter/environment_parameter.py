import os
import boto3

_cache: dict = {}


def get(name: str) -> str:
    """
    gets the environment variable value specified by `name`. if the `value`
    starts with ssm://, it will return the value of the SSM parameter with the specified name.

    The resulting value is cached, so subsequent requests will return the same value.
    """
    global _cache
    if name in _cache:
        return _cache[name]

    value = os.getenv(name)
    if value.startswith("ssm://"):
        name = value.removeprefix("ssm://")
        value = boto3.client("ssm").get_parameter(Name=name, WithDecryption=True)["Parameter"]["Value"]

    _cache[name] = value

    return value

"""
CLI for reporting upcoming maintenance windows
"""
import argparse
import sys
import inspect

import boto3
from copy import deepcopy
import botocore
from botocore.model import OperationModel
import os
import re
from typing import Dict, Optional
import json
from aws_maintenance_window_reporter import report


def main():
    """
    CLI entry point
    """
    parser = argparse.ArgumentParser(
        description="report maintenance windows on AWS resources."
    )
    parser.add_argument("--send-metrics", action="store_true", help="to DataDog")

    opts = parser.parse_args()

    session = boto3.session.Session()
    report(session, opts.send_metrics)


if __name__ == "__main__":
    main()

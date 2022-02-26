import argparse
from aws_maintenance_window_reporter import report

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="report maintenance windows on AWS resources."
    )
    parser.add_argument("--send-metrics", action="store_true")
    opts = parser.parse_args()
    report(opts.send_metrics)

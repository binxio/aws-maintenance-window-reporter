import argparse
from aws_maintenance_window_reporter import report


def main():
    parser = argparse.ArgumentParser(
        description="report maintenance windows on AWS resources."
    )
    parser.add_argument("--send-metrics", action="store_true", help="to DataDog")
    opts = parser.parse_args()
    report(opts.send_metrics)


if __name__ == "__main__":
    main()

"""
convert AWS maintenance window string representations into timestamps
"""
from datetime import datetime, timedelta


def boundary_to_datetime(now: datetime, window_boundary: str) -> datetime:
    """
    calculates the timestamp of a maintenance window boundary. The format of the
    window is "ddd:hh24:mi" where the valid days are: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

    >>> boundary_to_datetime(datetime.fromisoformat("2022-02-26T16:34:12+00:00"), "Sun:03:15")
    datetime.datetime(2022, 2, 27, 3, 15, tzinfo=datetime.timezone.utc)
    >>> boundary_to_datetime(datetime.fromisoformat("2022-02-26T16:34:12+00:00"), "Fri:03:15")
    datetime.datetime(2022, 3, 4, 3, 15, tzinfo=datetime.timezone.utc)
    >>> boundary_to_datetime(datetime.fromisoformat("2022-12-30T16:34:12+00:00"), "Wed:03:15")
    datetime.datetime(2023, 1, 4, 3, 15, tzinfo=datetime.timezone.utc)
    """
    day, hour, minute = window_boundary.split(":", 2)
    days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    weekday = next(
        map(lambda d: d[0], filter(lambda d: d[1] == day, enumerate(days))), 6
    )
    remaining_days = (weekday + 7 - now.weekday()) % 7
    return (now + timedelta(days=remaining_days)).replace(
        hour=int(hour), minute=int(minute), second=0, microsecond=0
    )


def next_maintenance_window(
    now: datetime, aws_maintenance_window: str
) -> (datetime, datetime):
    """
    calculates the next maintenance window. The format of the
    aws_maintenance_window is "ddd:hh24:mi-ddd:hh24:mi" where the valid days are:
    Mon, Tue, Wed, Thu, Fri, Sat, Sun.

    >>> next_maintenance_window(datetime.fromisoformat("2022-02-26T16:34:12+00:00"), \
                                "Sun:03:15-Sun:11:15") # doctest: +NORMALIZE_WHITESPACE
    (datetime.datetime(2022, 2, 27, 3, 15, tzinfo=datetime.timezone.utc), \
     datetime.datetime(2022, 2, 27, 11, 15, tzinfo=datetime.timezone.utc))
    """

    start, end = aws_maintenance_window.split("-", 1)
    return boundary_to_datetime(now, start), boundary_to_datetime(now, end)
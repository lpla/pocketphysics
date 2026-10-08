#!/usr/bin/env python3
"""Require complete passing ARM9 polygon API cases in every replay."""

import csv
from pathlib import Path
import sys


def check_rows(rows):
    rows = list(rows)
    groups = {}
    for row in rows:
        if row["label"] != "polygon-validation":
            if row["metric"].startswith("polygon_validation_"):
                raise ValueError("Polygon API result is attached to the wrong specimen")
            continue
        key = (row["emulator"], row["label"], row["iteration"])
        group = groups.setdefault(key, {})
        if row["metric"] not in ("polygon_validation_cases", "polygon_validation_failures"):
            continue
        if row["metric"] in group or int(row["pass"]) != 1 or int(row["count"]) != 1:
            raise ValueError(f"Invalid or duplicate API result: {key}")
        group[row["metric"]] = (int(row["mean_ticks"]), row["checksum"])
    if not groups:
        raise ValueError("No polygon API results")
    for key, group in groups.items():
        if set(group) != {"polygon_validation_cases", "polygon_validation_failures"}:
            raise ValueError(f"Incomplete API result: {key}")
        cases, checksum = group["polygon_validation_cases"]
        failures, failure_checksum = group["polygon_validation_failures"]
        if cases != 16 or failures != 0 or checksum != failure_checksum or checksum != "722c5bcb":
            raise ValueError(f"Failed polygon API result: {key}: {group}")
        yield key, checksum


def validate(path: Path) -> None:
    with path.open(newline="") as stream:
        for key, checksum in check_rows(csv.DictReader(stream)):
            print(key, "16 cases, zero failures, checksum", checksum)


if __name__ == "__main__":
    validate(Path(sys.argv[1]))

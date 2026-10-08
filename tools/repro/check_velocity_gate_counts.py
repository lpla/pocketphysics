#!/usr/bin/env python3
"""Check independent in-ROM gate counts; these rows are not timing evidence."""

import argparse
import csv
from pathlib import Path


def check_counts(rows):
    metrics = {"gate_total", "gate_half_eligible", "gate_wide_only_eligible", "gate_length_required"}
    grouped = {}
    for row in rows:
        if row["metric"] not in metrics:
            continue
        key = row["emulator"], row["label"], row["iteration"]
        group = grouped.setdefault(key, {})
        if row["metric"] in group:
            raise ValueError("duplicate velocity-gate count")
        if row["count"] != "1" or row["pass"] != "1":
            raise ValueError("velocity-gate count row failed")
        group[row["metric"]] = int(row["total_ticks"])
    if not grouped:
        raise ValueError("velocity-gate count rows are missing")
    for key, group in sorted(grouped.items()):
        if group.keys() != metrics or min(group.values()) < 0:
            raise ValueError("velocity-gate count set is incomplete or negative")
        total = group["gate_total"]
        parts = sum(value for name, value in group.items() if name != "gate_total")
        if total <= 0 or total != parts:
            raise ValueError("velocity-gate count conservation failed")
        yield key, group


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("results", type=Path)
    args = parser.parse_args()
    with args.results.open(newline="") as handle:
        for key, counts in check_counts(csv.DictReader(handle)):
            print(key, counts)


if __name__ == "__main__":
    main()

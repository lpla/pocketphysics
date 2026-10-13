#!/usr/bin/env python3
"""Require a complete replay rejected specifically for missing IRQ math restore."""
import csv
import sys
from pathlib import Path
from analyze_runtime import records, validate_run


def check(out: Path) -> None:
    rows = list(csv.DictReader((out / "results.csv").open()))
    metrics = {r["metric"]: r for r in rows}
    failures = metrics["math_preemption_failures"]
    if not 0 < int(failures["total_ticks"]) <= 8 or failures["pass"] != "0":
        raise AssertionError("Negative control did not detect arithmetic corruption")
    if metrics["runtime_complete"]["pass"] != "0":
        raise AssertionError("Negative control was not rejected")
    failures.update(total_ticks="0", mean_ticks="0", min_ticks="0", max_ticks="0", **{"pass": "1"})
    metrics["runtime_complete"]["pass"] = "1"
    label = rows[0]["label"]
    log = (out / "logs" / f"{label}.1.stdout.log").read_text(errors="replace")
    log += (out / "logs" / f"{label}.1.stderr.log").read_text(errors="replace")
    validate_run(rows, records(log, label))
    print("Negative control: replay gates pass; removed DIV/SQRT restoration is empirically rejected.")


if __name__ == "__main__": check(Path(sys.argv[1]))

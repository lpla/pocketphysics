#!/usr/bin/env python3
"""Require a complete replay rejected specifically for a deliberate regression."""
import argparse
import csv
from pathlib import Path
from analyze_runtime import records, validate_run


def check(out: Path, kind: str = "arithmetic") -> None:
    rows = list(csv.DictReader((out / "results.csv").open()))
    metrics = {r["metric"]: r for r in rows}
    failure_name = "math_preemption_failures" if kind == "arithmetic" else "length_boundary_failures"
    failures = metrics[failure_name]
    expected_failure = 8 if kind == "arithmetic" else 6544
    if int(failures["total_ticks"]) != expected_failure or failures["pass"] != "0":
        raise AssertionError(f"Negative control did not detect {kind} corruption")
    if metrics["runtime_complete"]["pass"] != "0":
        raise AssertionError("Negative control was not rejected")
    failures.update(total_ticks="0", mean_ticks="0", min_ticks="0", max_ticks="0", **{"pass": "1"})
    if kind == "length":
        actual = metrics["length_boundary_actual_checksum"]
        expected = metrics["length_boundary_reference_checksum"]["total_ticks"]
        if int(actual["total_ticks"]) != 0xb2c63575:
            raise AssertionError("Legacy length checksum differs from the host negative control")
        actual.update(total_ticks=expected, mean_ticks=expected, min_ticks=expected, max_ticks=expected)
    metrics["runtime_complete"]["pass"] = "1"
    label = rows[0]["label"]
    log = (out / "logs" / f"{label}.1.stdout.log").read_text(errors="replace")
    log += (out / "logs" / f"{label}.1.stderr.log").read_text(errors="replace")
    validate_run(rows, records(log, label))
    print(f"Negative control: replay gates pass; {kind} corruption is empirically rejected.")


if __name__ == "__main__":
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("out", type=Path)
    p.add_argument("--kind", choices=("arithmetic", "length"), default="arithmetic")
    args = p.parse_args()
    check(args.out, args.kind)

#!/usr/bin/env python3
"""Validate and summarize Pocket Physics in-ROM benchmark records."""

from __future__ import annotations

import argparse
import csv
import statistics
from collections import defaultdict
from pathlib import Path


TIMED_METRICS = {
    "touch_create_and_drag",
    "hit_test",
    "physics_step",
    "render_frame",
    "render_begin",
    "render_canvas",
    "render_end",
    "frame_total",
}

REQUIRED_METRICS = TIMED_METRICS | {
    "benchmark_started",
    "file_output_ready",
    "timer_read_overhead_ticks",
    "scene_things_created",
    "scene_position_sum_x",
    "scene_position_sum_y",
    "hit_test_heap_delta_bytes",
    "visible_things_rendered",
    "line_quads_rendered",
    "things_final",
    "behavior_pass",
    "hit_test_heap_fixed_pass",
    "overall_pass",
}

EXPECTED_COUNTS = {
    "touch_create_and_drag": 225,
    "hit_test": 600,
    "physics_step": 240,
    "render_frame": 240,
    "render_begin": 240,
    "render_canvas": 240,
    "render_end": 240,
    "frame_total": 240,
}

ROLE_LABELS = {"bench-historical", "bench-modern", "bench-improved"}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("results", type=Path)
    parser.add_argument("summary", type=Path)
    parser.add_argument("assertions", type=Path)
    parser.add_argument("--expected-repeats", type=int, required=True)
    parser.add_argument("--max-timing-spread-percent", type=float, default=0.0)
    return parser.parse_args()


def percentage_spread(values: list[int]) -> float:
    mean = statistics.mean(values)
    return 0.0 if mean == 0 else (max(values) - min(values)) * 100.0 / mean


def main() -> int:
    args = parse_args()
    with args.results.open(newline="") as handle:
        rows = list(csv.DictReader(handle))
    if not rows:
        raise SystemExit("No benchmark rows found")

    emulators = {row["emulator"] for row in rows}
    if len(emulators) != 1:
        raise AssertionError(f"Expected one emulator per result file, got {emulators}")
    emulator = next(iter(emulators))

    groups: dict[tuple[str, str, str, str], list[dict[str, str]]] = defaultdict(list)
    for row in rows:
        groups[(row["emulator"], row["label"], row["build"], row["metric"])].append(row)

    fields = [
        "emulator",
        "label",
        "build",
        "metric",
        "runs",
        "mean_ticks_avg",
        "mean_ticks_min",
        "mean_ticks_max",
        "mean_ticks_stdev",
        "total_ticks_spread_percent",
        "over_budget_total",
        "all_pass",
        "checksum_set",
        "status_set",
    ]
    with args.summary.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        for key, metric_rows in sorted(groups.items()):
            emu, label, build, metric = key
            means = [int(row["mean_ticks"]) for row in metric_rows]
            totals = [int(row["total_ticks"]) for row in metric_rows]
            writer.writerow(
                {
                    "emulator": emu,
                    "label": label,
                    "build": build,
                    "metric": metric,
                    "runs": len(metric_rows),
                    "mean_ticks_avg": f"{statistics.mean(means):.2f}",
                    "mean_ticks_min": min(means),
                    "mean_ticks_max": max(means),
                    "mean_ticks_stdev": f"{statistics.pstdev(means):.2f}",
                    "total_ticks_spread_percent": f"{percentage_spread(totals):.6f}",
                    "over_budget_total": sum(int(row["over_budget"]) for row in metric_rows),
                    "all_pass": int(all(row["pass"] == "1" for row in metric_rows)),
                    "checksum_set": "|".join(sorted({row["checksum"] for row in metric_rows})),
                    "status_set": "|".join(sorted({row["status"] for row in metric_rows})),
                }
            )

    labels = {row["label"] for row in rows}
    assertions: list[str] = []

    def require_metric(label: str, metric: str) -> list[dict[str, str]]:
        matches = [
            row for row in rows if row["label"] == label and row["metric"] == metric
        ]
        if not matches:
            raise AssertionError(f"Missing metric {metric!r} for {label!r}")
        return matches

    def scalar(label: str, metric: str) -> float:
        return statistics.mean(
            int(row["total_ticks"]) for row in require_metric(label, metric)
        )

    def mean_ticks(label: str, metric: str) -> float:
        return statistics.mean(
            int(row["mean_ticks"]) for row in require_metric(label, metric)
        )

    for label in sorted(labels):
        for metric in sorted(REQUIRED_METRICS):
            metric_rows = require_metric(label, metric)
            if len(metric_rows) != args.expected_repeats:
                raise AssertionError(
                    f"{label} {metric} has {len(metric_rows)} rows; "
                    f"expected {args.expected_repeats}"
                )
            indexes = {int(row["iteration"]) for row in metric_rows}
            if indexes != set(range(1, args.expected_repeats + 1)):
                raise AssertionError(f"{label} {metric} has incomplete repetition indexes")
            expected_statuses = {"0"} if emulator == "hardware" else {"124"}
            if {row["status"] for row in metric_rows} != expected_statuses:
                raise AssertionError(f"{label} {metric} has unexpected emulator status")
            if len({row["checksum"] for row in metric_rows}) != 1:
                raise AssertionError(f"{label} {metric} checksum changed across repetitions")

            totals = [int(row["total_ticks"]) for row in metric_rows]
            if metric in TIMED_METRICS:
                spread = percentage_spread(totals)
                if spread > args.max_timing_spread_percent:
                    raise AssertionError(
                        f"{label} {metric} timing spread {spread:.6f}% exceeds "
                        f"{args.max_timing_spread_percent:.6f}%"
                    )
            elif len(set(totals)) != 1:
                raise AssertionError(f"{label} {metric} scalar changed across repetitions")

        for metric, expected_count in EXPECTED_COUNTS.items():
            if not all(
                int(row["count"]) == expected_count
                for row in require_metric(label, metric)
            ):
                raise AssertionError(
                    f"{label} {metric} did not execute {expected_count} samples"
                )

        if not all(
            int(row["total_ticks"]) == 27 and row["pass"] == "1"
            for row in require_metric(label, "scene_things_created")
        ):
            raise AssertionError(f"{label} did not create the exact 27-object touch scene")
        if not all(
            int(row["total_ticks"]) == 27
            for row in require_metric(label, "things_final")
        ):
            raise AssertionError(f"{label} did not retain all 27 scene objects")
        if not all(
            int(row["total_ticks"]) == 1 and row["pass"] == "1"
            for row in require_metric(label, "behavior_pass")
        ):
            raise AssertionError(f"{label} failed behavior validation")
        if not all(
            0 < int(row["total_ticks"]) < 1000
            for row in require_metric(label, "timer_read_overhead_ticks")
        ):
            raise AssertionError(f"{label} timer calibration is implausible")
        if not all(
            int(row["total_ticks"]) > 0
            for metric in ("visible_things_rendered", "line_quads_rendered")
            for row in require_metric(label, metric)
        ):
            raise AssertionError(f"{label} rendered no measurable scene work")
        assertions.append(
            f"{emulator} {label}: complete touch/physics/render workload; "
            f"timing spread <= {args.max_timing_spread_percent:.6f}%"
        )

    if ROLE_LABELS <= labels:
        topology = {
            label: {
                row["checksum"]
                for row in require_metric(label, "scene_things_created")
            }
            for label in ROLE_LABELS
        }
        if len(set.union(*topology.values())) != 1:
            raise AssertionError(f"Initial scene topology differs across builds: {topology}")

        for metric in ("scene_position_sum_x", "scene_position_sum_y"):
            values = {label: scalar(label, metric) for label in ROLE_LABELS}
            if abs(values["bench-improved"] - values["bench-historical"]) > 1:
                raise AssertionError(
                    f"Improved scene differs from historical for {metric}: {values}"
                )
            if max(values.values()) - min(values.values()) > 27:
                raise AssertionError(
                    f"Scene position sums exceed one pixel per object for {metric}: {values}"
                )

        for label in ("bench-historical", "bench-modern"):
            if scalar(label, "hit_test_heap_delta_bytes") <= 0:
                raise AssertionError(f"{label} did not reproduce the hit-test leak")
            if scalar(label, "overall_pass") != 0:
                raise AssertionError(f"{label} unexpectedly passed the leak check")
        if scalar("bench-improved", "hit_test_heap_delta_bytes") != 0:
            raise AssertionError("bench-improved retained hit-test heap growth")
        if scalar("bench-improved", "overall_pass") != 1:
            raise AssertionError("bench-improved failed the in-ROM acceptance check")

        for metric in (
            "touch_create_and_drag",
            "hit_test",
            "physics_step",
            "render_frame",
            "frame_total",
        ):
            improved = mean_ticks("bench-improved", metric)
            modern = mean_ticks("bench-modern", metric)
            if improved >= modern:
                raise AssertionError(
                    f"bench-improved {metric} {improved:.2f} is not faster "
                    f"than modern {modern:.2f}"
                )

        for metric in ("hit_test", "physics_step", "frame_total"):
            improved = mean_ticks("bench-improved", metric)
            historical = mean_ticks("bench-historical", metric)
            if improved >= historical:
                raise AssertionError(
                    f"bench-improved {metric} {improved:.2f} is not faster "
                    f"than historical {historical:.2f}"
                )

        assertions.extend(
            [
                f"{emulator}: all builds created the same 27-object touch scene",
                f"{emulator}: improved removed the reproduced hit-test leak",
                f"{emulator}: improved beat modern in every primary workload",
                f"{emulator}: improved beat historical hit-test, physics, and frame total",
            ]
        )

    args.assertions.write_text("".join(f"{line}\n" for line in assertions))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

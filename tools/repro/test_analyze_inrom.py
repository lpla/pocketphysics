#!/usr/bin/env python3
"""Unit tests for benchmark evidence validation failures."""

from __future__ import annotations

import csv
import json
import subprocess
import tempfile
import unittest
from pathlib import Path

import analyze_inrom


FIELDS = (
    "emulator",
    "label",
    "iteration",
    "status",
    "rom_sha256",
    "rom_size_bytes",
    "tag",
    "build",
    "metric",
    "count",
    "total_ticks",
    "mean_ticks",
    "min_ticks",
    "max_ticks",
    "budget_ticks",
    "over_budget",
    "checksum",
    "pass",
)

ROLES = ("bench-historical", "bench-modern", "bench-improved")


def scalar_value(label: str, metric: str) -> int:
    common = {
        "benchmark_started": 1,
        "file_output_ready": 0,
        "timer_read_overhead_ticks": 15,
        "scene_things_created": 27,
        "scene_position_sum_x": 2995,
        "scene_position_sum_y": 1943,
        "visible_things_rendered": 5152,
        "line_quads_rendered": 22500,
        "things_final": 27,
        "behavior_pass": 1,
    }
    if metric in common:
        return common[metric]
    if metric == "hit_test_heap_delta_bytes":
        return 0 if label == "bench-improved" else 14400
    if metric in {"hit_test_heap_fixed_pass", "overall_pass"}:
        return 1 if label == "bench-improved" else 0
    if metric == "frame_over_1pct_count":
        return 0 if label != "bench-modern" else 10
    if metric == "frame_over_2x_count":
        return 0 if label != "bench-modern" else 2
    raise AssertionError(metric)


def timed_mean(label: str, metric: str) -> int:
    values = {
        "bench-historical": {
            "touch_create_and_drag": 500,
            "hit_test": 500,
            "physics_step": 1000,
            "render_frame": 500,
            "render_begin": 10,
            "render_canvas": 480,
            "render_end": 10,
            "frame_total": 1500,
        },
        "bench-modern": {
            "touch_create_and_drag": 1000,
            "hit_test": 600,
            "physics_step": 2000,
            "render_frame": 700,
            "render_begin": 10,
            "render_canvas": 680,
            "render_end": 10,
            "frame_total": 3000,
        },
        "bench-improved": {
            "touch_create_and_drag": 400,
            "hit_test": 300,
            "physics_step": 400,
            "render_frame": 600,
            "render_begin": 10,
            "render_canvas": 580,
            "render_end": 10,
            "frame_total": 1000,
        },
    }
    return values[label][metric]


def checksum(label: str, metric: str) -> str:
    if metric in {
        "scene_things_created",
        "scene_position_sum_x",
        "scene_position_sum_y",
        "touch_create_and_drag",
    }:
        return "d8635f64"
    if metric in {
        "hit_test",
        "hit_test_heap_delta_bytes",
        "hit_test_heap_fixed_pass",
    }:
        return "d82df0ac"
    if metric in {"benchmark_started", "file_output_ready", "timer_read_overhead_ticks"}:
        return "00000000"
    return {
        "bench-historical": "11111111",
        "bench-modern": "22222222",
        "bench-improved": "33333333",
    }[label]


def valid_rows() -> list[dict[str, str | int]]:
    rows: list[dict[str, str | int]] = []
    for label_index, label in enumerate(ROLES):
        for metric in sorted(analyze_inrom.REQUIRED_METRICS):
            count = analyze_inrom.EXPECTED_COUNTS.get(metric, 1)
            mean = timed_mean(label, metric) if metric in analyze_inrom.TIMED_METRICS else scalar_value(label, metric)
            metric_pass = 1
            if metric in {"hit_test_heap_delta_bytes", "hit_test_heap_fixed_pass", "overall_pass"}:
                metric_pass = 1 if label == "bench-improved" else 0
            if metric in {"frame_over_1pct_count", "frame_over_2x_count"}:
                metric_pass = int(mean == 0)
            rows.append(
                {
                    "emulator": "melonds",
                    "label": label,
                    "iteration": 1,
                    "status": 124,
                    "rom_sha256": str(label_index + 1) * 64,
                    "rom_size_bytes": 1000 + label_index,
                    "tag": "PPBENCH",
                    "build": label,
                    "metric": metric,
                    "count": count,
                    "total_ticks": mean * count,
                    "mean_ticks": mean,
                    "min_ticks": mean,
                    "max_ticks": mean,
                    "budget_ticks": 558566 if metric in analyze_inrom.TIMED_METRICS else 0,
                    "over_budget": 0,
                    "checksum": checksum(label, metric),
                    "pass": metric_pass,
                }
            )
    return rows


class AnalyzerTests(unittest.TestCase):
    def run_analyzer(self, rows: list[dict[str, str | int]]) -> subprocess.CompletedProcess[str]:
        with tempfile.TemporaryDirectory() as raw_tmp:
            tmp = Path(raw_tmp)
            results = tmp / "results.csv"
            with results.open("w", newline="") as handle:
                writer = csv.DictWriter(handle, fieldnames=FIELDS, lineterminator="\n")
                writer.writeheader()
                writer.writerows(rows)
            return subprocess.run(
                [
                    "python3",
                    str(Path(analyze_inrom.__file__)),
                    str(results),
                    str(tmp / "summary.csv"),
                    str(tmp / "assertions.txt"),
                    "--expected-repeats",
                    "1",
                ],
                text=True,
                capture_output=True,
                check=False,
            )

    def test_valid_role_matrix_passes(self) -> None:
        result = self.run_analyzer(valid_rows())
        self.assertEqual(result.returncode, 0, result.stderr)

    def test_mixed_rom_identity_fails(self) -> None:
        rows = valid_rows()
        rows[1]["rom_sha256"] = "f" * 64
        result = self.run_analyzer(rows)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("multiple ROM identities", result.stderr)

    def test_non_benchmark_record_fails(self) -> None:
        rows = valid_rows()
        rows[0]["tag"] = "NOTBENCH"
        result = self.run_analyzer(rows)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("non-PPBENCH", result.stderr)

    def test_improved_cadence_regression_fails(self) -> None:
        rows = valid_rows()
        for row in rows:
            if row["label"] == "bench-improved" and row["metric"] == "frame_over_1pct_count":
                row["total_ticks"] = 1
                row["mean_ticks"] = 1
                row["min_ticks"] = 1
                row["max_ticks"] = 1
                row["pass"] = 0
        result = self.run_analyzer(rows)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("exceeded the 60 Hz frame target", result.stderr)

    def test_hardware_ingestion_round_trip(self) -> None:
        rows = valid_rows()
        with tempfile.TemporaryDirectory() as raw_tmp:
            tmp = Path(raw_tmp)
            command = [
                "python3",
                str(Path(analyze_inrom.__file__).with_name("ingest_hardware_results.py")),
            ]
            for label in ROLES:
                rom = tmp / f"{label}.nds"
                rom.write_bytes((label + "\n").encode())
                raw_csv = tmp / f"{label}.csv"
                role_rows = [dict(row) for row in rows if row["label"] == label]
                for row in role_rows:
                    if row["metric"] == "file_output_ready":
                        for field in ("total_ticks", "mean_ticks", "min_ticks", "max_ticks"):
                            row[field] = 1
                with raw_csv.open("w", newline="") as handle:
                    writer = csv.DictWriter(
                        handle, fieldnames=FIELDS[6:], lineterminator="\n"
                    )
                    writer.writeheader()
                    writer.writerows(
                        {field: row[field] for field in FIELDS[6:]} for row in role_rows
                    )
                command.extend(["--rom", f"{label}={rom}"])
                command.extend(["--csv", f"{label}={raw_csv}"])
            output = tmp / "evidence"
            command.extend(
                [
                    "--output",
                    str(output),
                    "--hardware-model",
                    "test-console",
                    "--flashcart",
                    "test-cart",
                    "--firmware",
                    "test-firmware",
                ]
            )
            result = subprocess.run(command, text=True, capture_output=True, check=False)
            self.assertEqual(result.returncode, 0, result.stderr)
            metadata = json.loads((output / "metadata.json").read_text())
            self.assertEqual(metadata["emulator"], "hardware")
            self.assertEqual(metadata["repeats"], 1)
            self.assertEqual(len(metadata["source_files"]), 3)
            self.assertEqual(len(list((output / "raw").glob("*.csv"))), 3)


if __name__ == "__main__":
    unittest.main()

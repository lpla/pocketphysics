#!/usr/bin/env python3
"""Retain independently published trajectory outcomes and reject ambiguous input."""

import csv
import tempfile
import unittest
from pathlib import Path
from compare_runtime_bodies import compare, load

ROOT = Path(__file__).resolve().parents[2]


class RuntimeBodyComparisonTests(unittest.TestCase):
    def test_published_fixed_mode_divergence(self):
        source = ROOT / "research/results/length-correction/runtime/bodies.csv"
        result = compare(source, source, "runtime-modern-fixed-ds", "runtime-improved")
        self.assertEqual(
            (result["shared_records"], result["differing_records"]), (3528, 2374)
        )
        self.assertEqual(
            (
                result["first_differences"][0]["step"],
                result["first_differences"][0]["thing"],
            ),
            (26, 1),
        )

    def test_recorded_body_preservation_after_save_change(self):
        previous = ROOT / "research/results/storage-dialogs/runtime/bodies.csv"
        current = ROOT / "research/results/world-save/runtime/bodies.csv"
        result = compare(previous, current, "runtime-improved", "runtime-improved")
        self.assertEqual(
            (result["shared_records"], result["differing_records"]), (3528, 0)
        )
        self.assertEqual((result["only_reference"], result["only_candidate"]), (0, 0))

    def test_missing_label_and_duplicated_real_record_are_rejected(self):
        source = ROOT / "research/results/world-save/runtime/bodies.csv"
        with self.assertRaises(ValueError):
            load(source, "absent")
        with source.open() as stream:
            reader = csv.DictReader(stream)
            fields = reader.fieldnames
            row = next(reader)
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "duplicate.csv"
            with path.open("w", newline="") as stream:
                writer = csv.DictWriter(stream, fieldnames=fields)
                writer.writeheader()
                writer.writerows([row, row])
            with self.assertRaises(ValueError):
                load(path, "runtime-improved")


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Verify that compiler-unit reconstruction never changes a historical C body."""

import hashlib
from pathlib import Path
import tempfile
import unittest

from prepare_ulibrary_text import BEGIN, END, FONT_PREFIX, SOURCE_SHA256, prepare, split_source


SOURCE = Path(__file__).resolve().parents[2] / "research/reconstruction/v06/dependencies/ulibrary/base/text.c"


class TextPartitionTests(unittest.TestCase):
    def test_identity_and_lossless_partition(self):
        original = SOURCE.read_bytes()
        self.assertEqual(hashlib.sha256(original).hexdigest(), SOURCE_SHA256)
        core, font = split_source(original)
        body = font[len(FONT_PREFIX):]
        self.assertEqual(body, original[original.index(BEGIN):original.index(END)])
        self.assertEqual(core[:core.index(END)] + body + core[core.index(END):], original)

    def test_writes_exact_unmodified_c_bodies(self):
        original = SOURCE.read_bytes()
        with tempfile.TemporaryDirectory() as directory:
            out = Path(directory) / "units"
            prepare(original, out)
            expected = split_source(original)
            self.assertEqual((out / "text-core.c").read_bytes(), expected[0])
            self.assertEqual((out / "font-source.c").read_bytes(), expected[1])

    def test_changed_source_is_rejected_before_writing(self):
        with tempfile.TemporaryDirectory() as directory:
            out = Path(directory) / "units"
            with self.assertRaisesRegex(ValueError, "identity differs"):
                prepare(SOURCE.read_bytes() + b"\n", out)
            self.assertFalse(out.exists())

    def test_missing_or_duplicate_boundaries_are_rejected(self):
        for value in (b"", BEGIN + END + BEGIN, END + BEGIN + END):
            with self.subTest(value=value), self.assertRaisesRegex(ValueError, "unique"):
                split_source(value)

    def test_reversed_boundaries_are_rejected(self):
        with self.assertRaisesRegex(ValueError, "out of order"):
            split_source(END + BEGIN)


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Exercise output-path gates without launching an emulator or deleting files."""

import os
from pathlib import Path
import subprocess
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[2]


class BenchmarkPathTests(unittest.TestCase):
    def run_gate(self, out, accepted):
        result = subprocess.run(["bash", str(ROOT / "tools/repro/benchmark_inrom.sh"),
                                 "missing-rom=does-not-exist.nds"], cwd=ROOT,
                                env=dict(os.environ, OUT=str(out)), capture_output=True, text=True)
        self.assertEqual(result.returncode, 1)
        message = result.stdout + result.stderr
        self.assertIn("Invalid ROM spec" if accepted else "OUT must be inside the repository", message)

    def test_repository_relative(self):
        self.run_gate("research-artifacts/test/path-gate", True)

    def test_absolute_inside(self):
        self.run_gate(ROOT / "research-artifacts/test/path-gate", True)

    def test_repository_root_rejected(self):
        self.run_gate(ROOT, False)

    def test_absolute_outside_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            self.run_gate(directory, False)

    def test_parent_traversal_rejected(self):
        self.run_gate("../path-gate-outside", False)

    def test_symlink_escape_rejected(self):
        parent = ROOT / "research-artifacts/test"
        parent.mkdir(parents=True, exist_ok=True)
        with tempfile.TemporaryDirectory(dir=parent) as inside, tempfile.TemporaryDirectory() as outside:
            link = Path(inside) / "escape"
            link.symlink_to(outside, target_is_directory=True)
            self.run_gate(link, False)


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Test locked downloads locally without depending on a network service."""

import hashlib
import subprocess
import tempfile
import unittest
from pathlib import Path


class LockedFetchTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.primary = self.root / "primary"
        self.mirror = self.root / "mirror"
        self.dest = self.root / "cache" / "archive"
        self.payload = b"the locked archive\n"
        self.expected = hashlib.sha256(self.payload).hexdigest()

    def fetch(self, with_mirror=True):
        helper = Path(__file__).with_name("fetch_locked.sh")
        return subprocess.run(
            ["bash", "-euc", 'source "$1"; fetch "$2" "$3" "$4" "$5"',
             "fetch-test", str(helper), self.primary.as_uri(), str(self.dest),
             self.expected, self.mirror.as_uri() if with_mirror else ""],
            capture_output=True, text=True, check=False,
        )

    def assert_success(self, result):
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(self.dest.read_bytes(), self.payload)

    def test_primary_without_mirror(self):
        self.primary.write_bytes(self.payload)
        self.assert_success(self.fetch(with_mirror=False))

    def test_missing_primary_uses_mirror(self):
        self.mirror.write_bytes(self.payload)
        result = self.fetch()
        self.assert_success(result)
        self.assertIn("preservation mirror", result.stdout)

    def test_changed_primary_uses_verified_mirror(self):
        self.primary.write_bytes(b"different rebuild, same URL")
        self.mirror.write_bytes(self.payload)
        result = self.fetch()
        self.assert_success(result)
        self.assertIn("Rejected download", result.stderr)

    def test_wrong_mirror_fails_closed(self):
        self.primary.write_bytes(b"wrong primary")
        self.mirror.write_bytes(b"wrong mirror")
        result = self.fetch()
        self.assertNotEqual(result.returncode, 0)
        self.assertFalse(self.dest.exists())

    def test_missing_primary_without_mirror_fails(self):
        self.assertNotEqual(self.fetch(with_mirror=False).returncode, 0)
        self.assertFalse(self.dest.exists())

    def test_valid_cache_needs_no_download(self):
        self.dest.parent.mkdir()
        self.dest.write_bytes(self.payload)
        before = self.dest.stat().st_mtime_ns
        self.assert_success(self.fetch())
        self.assertEqual(before, self.dest.stat().st_mtime_ns)

    def test_corrupt_cache_is_replaced(self):
        self.dest.parent.mkdir()
        self.dest.write_bytes(b"incomplete download")
        self.primary.write_bytes(self.payload)
        self.assert_success(self.fetch())


if __name__ == "__main__":
    unittest.main()

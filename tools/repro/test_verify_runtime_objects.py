#!/usr/bin/env python3
"""Test the runtime gate independently of the compiler bootstrap."""

import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from test_verify_recovered_objects import specimen
from verify_recovered_objects import object_identity, identity_hash
from verify_runtime_objects import check_members, check_object, verify_runtime
from recover_gcc_seed import advance, reverse, checksum, recover


class RuntimeGateTests(unittest.TestCase):
    def test_gcc_seed_checksums_and_reverse_step(self):
        self.assertEqual(checksum("0xce997cde"), 0x38e38b35)
        self.assertEqual(checksum("0xcea245db"), 0xc7288d79)
        for crc in (0, 1, 0x38e38b35, 0xffffffff):
            for byte in (0, 1, 127, 128, 255):
                self.assertEqual(reverse(advance(crc, byte), byte), crc)

    def test_gcc_seed_recovery_is_reproducible(self):
        self.assertEqual(recover([0x38e38b35, 0xc7288d79]), ["0xce997cde", "0xcea245db"])

    def test_member_order_is_normalized_not_rejected(self):
        check_members(["b.o", "a.o"], ["a.o", "b.o"])

    def test_missing_extra_duplicate_and_unsafe_members_fail(self):
        for actual, expected in [(["a.o"], ["a.o", "b.o"]),
                                 (["a.o", "b.o"], ["a.o"]),
                                 (["a.o", "a.o"], ["a.o"]),
                                 (["a.o", "a.o"], ["a.o", "a.o"]),
                                 (["../a.o"], ["../a.o"])]:
            with self.subTest(actual=actual, expected=expected), self.assertRaises(ValueError):
                check_members(actual, expected)

    def test_object_gate_checks_identity_and_sizes(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "one.o"
            path.write_bytes(specimen())
            identity = object_identity(path)
            expected = {"identity_sha256": identity_hash(identity), "allocated_bytes": 29, "text_bytes": 8}
            check_object(path, expected)
            path.write_bytes(specimen(debug=b"different compilation directory"))
            check_object(path, expected)
            for field, value in [("identity_sha256", "0" * 64), ("allocated_bytes", 30), ("text_bytes", 9)]:
                with self.subTest(field=field), self.assertRaises(ValueError):
                    check_object(path, {**expected, field: value})
            path.write_bytes(specimen(symbol_value=4))
            with self.assertRaises(ValueError):
                check_object(path, expected)

    def test_changed_linker_script_fails(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "layout.ld").write_text("changed")
            manifest = {"archives": {}, "objects": {}, "support_files": {"layout.ld": "0" * 64}}
            with self.assertRaisesRegex(ValueError, "linker/specification"):
                verify_runtime(manifest, root, "unused")

    def test_reordered_archive_is_verified_before_replacement(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            archive = root / "lib.a"
            archive.write_bytes(b"original archive")
            manifest = {"archives": {"lib.a": {"members": [["a.o", "1" * 64, 8, 8], ["b.o", "2" * 64, 8, 8]]}},
                        "objects": {}, "support_files": {}}

            def run(command, cwd, check):
                if command[1] == "crs":
                    Path(command[2]).write_bytes(b"ordered archive")

            with patch("verify_runtime_objects.subprocess.check_output", side_effect=["b.o\na.o\n", "a.o\nb.o\n"]), \
                    patch("verify_runtime_objects.subprocess.run", side_effect=run), \
                    patch("verify_runtime_objects.check_object") as gate:
                report = verify_runtime(manifest, root, "ar")
            self.assertEqual(gate.call_count, 2)
            self.assertEqual(report["archives"]["lib.a"]["verified_members"], 2)
            self.assertEqual(archive.read_bytes(), b"ordered archive")

    def test_wrong_archive_order_does_not_replace_input(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            archive = root / "lib.a"
            archive.write_bytes(b"original archive")
            manifest = {"archives": {"lib.a": {"members": [["a.o", "1" * 64, 8, 8], ["b.o", "2" * 64, 8, 8]]}},
                        "objects": {}, "support_files": {}}
            with patch("verify_runtime_objects.subprocess.check_output", return_value="b.o\na.o\n"), \
                    patch("verify_runtime_objects.subprocess.run"), patch("verify_runtime_objects.check_object"), \
                    self.assertRaisesRegex(ValueError, "archive order"):
                verify_runtime(manifest, root, "ar")
            self.assertEqual(archive.read_bytes(), b"original archive")

    def test_public_manifest_has_full_declared_inventory(self):
        path = Path(__file__).resolve().parents[2] / "research/reconstruction/v06/runtime/object-identities.json"
        manifest = json.loads(path.read_text())
        self.assertEqual(len(manifest["archives"]), 14)
        self.assertEqual(sum(len(archive["members"]) for archive in manifest["archives"].values()), 1774)
        self.assertEqual(len(manifest["objects"]), 12)
        for archive in manifest["archives"].values():
            members = [row[0] for row in archive["members"]]
            check_members(members, members)


if __name__ == "__main__":
    unittest.main()

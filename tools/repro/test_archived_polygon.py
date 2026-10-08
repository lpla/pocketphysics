#!/usr/bin/env python3
"""Verify archival identity and the complete, explicit source reconstruction delta."""

import hashlib
from pathlib import Path
import subprocess
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[2]
REFERENCE = ROOT / "research/reference/box2d-fixed-20080310/box2d_fixed_2.patch"
CONTRIB = ROOT / "research/reconstruction/v06/dependencies/box2d/Contrib"
ABI_MARKER = " // Altered to reconstruct the released pointer-argument ABI."


class ArchivedPolygonTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.directory = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.directory.cleanup)
        subprocess.run(["git", "apply", "-p0", "--include=Source/Contrib/*", str(REFERENCE)],
                       cwd=cls.directory.name, check=True, capture_output=True)
        cls.original = Path(cls.directory.name) / "Source/Contrib"

    def test_archive_and_extracted_source_identities(self):
        self.assertEqual(hashlib.sha256(REFERENCE.read_bytes()).hexdigest(),
                         "331cd9bbb5de3c6be08c61e57d83ff6741dcd5e498eeaf1010b5c61a740ec6d4")
        self.assertEqual(hashlib.sha256((self.original / "b2Polygon.cpp").read_bytes()).hexdigest(),
                         "3d12a6856aadb81199fb2609f64de416e21dad4de223dee88880713cea22a16a")

    def test_polygon_delta_is_only_the_documented_abi_adaptation(self):
        expected = (self.original / "b2Polygon.cpp").read_text()
        changes = (
            ("GetRightestConnection(*oldNode)", "GetRightestConnection(oldNode)"),
            ("GetRightestConnection(b2PolyNode& incoming){",
             "GetRightestConnection(b2PolyNode* incoming){" + ABI_MARKER),
            ("position - incoming.position", "position - incoming->position"),
            ("connected[i] == &incoming", "connected[i] == incoming"),
            ("GetRightestConnection(temp)", "GetRightestConnection(&temp)"),
        )
        for before, after in changes:
            self.assertEqual(expected.count(before), 1)
            expected = expected.replace(before, after)
        self.assertEqual((CONTRIB / "b2Polygon.cpp").read_text(), expected)
        expected = (self.original / "b2Polygon.h").read_text().replace(
            "GetRightestConnection(b2PolyNode& incoming);",
            "GetRightestConnection(b2PolyNode* incoming);" + ABI_MARKER)
        self.assertEqual((CONTRIB / "b2Polygon.h").read_text(), expected)

    def test_triangle_files_are_unmodified_archived_source(self):
        for name in ("b2Triangle.cpp", "b2Triangle.h"):
            self.assertEqual((CONTRIB / name).read_bytes(), (self.original / name).read_bytes())

    def test_assertion_line_numbers_are_preserved(self):
        for source in (self.original / "b2Polygon.cpp", CONTRIB / "b2Polygon.cpp"):
            lines = source.read_text().splitlines()
            self.assertEqual(len(lines), 1603)
            self.assertEqual(lines[1600].strip(), "b2Assert(res);")


if __name__ == "__main__":
    unittest.main()

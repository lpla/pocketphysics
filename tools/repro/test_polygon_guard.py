#!/usr/bin/env python3
"""Negative tests for the independent ARM9 polygon-validation result gate."""

from copy import deepcopy
import unittest

from check_polygon_validation import check_rows
from transform_convex_decomposition import add_validation_guards


def rows():
    return [dict(emulator="melonds", label="polygon-validation", iteration="1",
                 metric=metric, count="1", mean_ticks=str(value), checksum="722c5bcb",
                 **{"pass": "1"})
            for metric, value in (("polygon_validation_cases", 16),
                                  ("polygon_validation_failures", 0))]


class PolygonResultTests(unittest.TestCase):
    def test_complete_result(self):
        self.assertEqual(len(list(check_rows(rows()))), 1)

    def test_missing_duplicate_and_failed_rows(self):
        valid = rows()
        for changed in ([], valid[:1], valid + [valid[0]],
                        [dict(valid[0], **{"pass": "0"}), valid[1]],
                        [dict(valid[0], count="0"), valid[1]]):
            with self.assertRaises(ValueError):
                list(check_rows(changed))

    def test_guards_precede_geometry_and_allocation(self):
        source = """bool b2Polygon::IsUsable(bool printErrors){
\tint32 error = -1;
\tbool noError = true;
\tif (nVertices < 3 || nVertices > b2_maxPolygonVertices) {noError = false; error = 0;}
\tif (!IsConvex()) {noError = false; error = 1;}
\tif (!IsSimple()) {noError = false; error = 2;}
\tif (GetArea() < B2_FLT_EPSILON) {noError = false; error = 3;}
\t//Compute normals
\tb2Vec2* normals = new b2Vec2[nVertices];
\tb2Vec2* vertices = new b2Vec2[nVertices];
}
"""
        guarded = add_validation_guards(source)
        self.assertLess(guarded.index("return false;"), guarded.index("IsConvex()"))
        self.assertLess(guarded.index("if (!noError)"), guarded.index("new b2Vec2"))
        self.assertIn("#line 5\n", guarded)
        self.assertIn("#line 10\n", guarded)
        with self.assertRaises(ValueError):
            add_validation_guards(source.replace("//Compute normals", "//Changed preimage"))

    def test_counts_and_checksums_are_locked(self):
        for index, field, value in ((0, "mean_ticks", "15"), (1, "mean_ticks", "1"),
                                    (0, "checksum", "00000000"), (1, "checksum", "deadbeef")):
            changed = rows()
            changed[index][field] = value
            with self.assertRaises(ValueError):
                list(check_rows(changed))

    def test_missing_entire_repetition(self):
        changed = rows() + [dict(rows()[0], iteration="2", metric="touch_create_and_drag")]
        with self.assertRaises(ValueError):
            list(check_rows(changed))

    def test_wrong_specimen(self):
        changed = deepcopy(rows())
        for row in changed:
            row["label"] = "selected"
        with self.assertRaises(ValueError):
            list(check_rows(changed))


if __name__ == "__main__":
    unittest.main()

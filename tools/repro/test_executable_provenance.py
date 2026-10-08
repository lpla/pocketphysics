#!/usr/bin/env python3
"""Test provenance parsing and non-overlapping byte accounting."""

import unittest

from audit_executable_provenance import classify, map_rows, partition


class ProvenanceTests(unittest.TestCase):
    def test_map_ignores_discarded_sections_and_parses_continuations(self):
        text = """Discarded input sections
 .text 0x00000000 0x10 wrong.o
Linker script and memory map
.text 0x02000000 0x30
 .text 0x02000000 0x10 first.o
 .text.long_name
                0x02000010 0x10 /sdk/lib.a(second.o)
 *fill*         0x02000020 0x10 00
"""
        self.assertEqual(map_rows(text), [(".text", 0x02000000, 16, "first.o"),
                                        (".text.long_name", 0x02000010, 16, "/sdk/lib.a(second.o)"),
                                        ("*fill*", 0x02000020, 16, "linker padding")])

    def test_unknown_owner_and_missing_map_fail(self):
        with self.assertRaises(ValueError):
            classify("arm9", "/sdk/unrecorded.a(one.o)", set())
        with self.assertRaises(ValueError):
            map_rows("no linker map")

    def test_residual_boundaries_and_runtime_are_distinct(self):
        self.assertEqual(classify("arm9", "/sdk/libul.a(ulib-historical-layout.o)", set()), "residual_reconstruction")
        self.assertEqual(classify("arm9", "/sdk/libnds9.a(console.o)", set()), "source_dependency")
        self.assertEqual(classify("arm9", "/sdk/libnds9.a(card.o)", set()), "source_dependency")
        self.assertEqual(classify("arm9", "/sdk/libbox2d2.a(b2Triangle.o)", set()), "source_dependency")
        for name in ("tinystr.o", "tinyxml.o", "tinyxmlerror.o", "tinyxmlparser.o"):
            self.assertEqual(classify("arm9", "/sdk/libtinyxml.a(" + name + ")", set()), "source_dependency")
        for name in ("card.o", "clock.o", "touch.o", "userSettings.o"):
            self.assertEqual(classify("arm7", "/sdk/libnds7.a(" + name + ")", set()), "source_dependency")
        self.assertEqual(classify("arm9", "/sdk/libnds9.a(videoGL.o)", set()), "source_dependency")
        self.assertEqual(classify("arm9", "/sdk/libc.a(lib_a-malloc.o)", set()), "source_runtime")
        self.assertEqual(classify("arm7", "main.o", {"main.o"}), "source_application")

    def test_replacement_overrides_source_and_gaps_are_not_credited(self):
        sections = [{"name": ".text", "address": 100, "size": 30}]
        inputs = [{"address": 100, "size": 20, "category": "source", "owner": "one.o"}]
        replacements = [{"address": 105, "size": 5, "category": "residual", "owner": "replacement"}]
        rows = partition(sections, inputs, replacements)
        self.assertEqual([(row["address"], row["size"], row["category"]) for row in rows],
                         [(100, 5, "source"), (105, 5, "residual"), (110, 10, "source"), (120, 10, "unattributed")])
        self.assertEqual(sum(row["size"] for row in rows), 30)

    def test_complete_archived_solver_objects_and_unknown_sections(self):
        for member in ("b2ContactSolver.o", "b2Island.o"):
            owner = "/sdk/libbox2d2.a(" + member + ")"
            self.assertEqual(classify("arm9", owner, set(), ".text"), "source_dependency")
            for name in (None, ".text.contact.velocity", ".text.unrecorded"):
                with self.assertRaisesRegex(ValueError, "unclassified solver section"):
                    classify("arm9", owner, set(), name)

    def test_overlaps_fail_and_outside_replacements_are_not_counted(self):
        sections = [{"name": ".text", "address": 100, "size": 20}]
        inputs = [{"address": 100, "size": 20, "category": "source", "owner": "one.o"}]
        outside = [{"address": 200, "size": 20, "category": "residual", "owner": "data"}]
        self.assertEqual(sum(row["size"] for row in partition(sections, inputs, outside)), 20)
        with self.assertRaisesRegex(ValueError, "overlapping provenance"):
            partition(sections, inputs + inputs, [])
        with self.assertRaisesRegex(ValueError, "overlapping provenance"):
            partition(sections, inputs, inputs + inputs)

    def test_complete_polygon_cpp_unit_and_unknown_sections(self):
        owner = "/sdk/libbox2d2.a(b2Polygon.o)"
        for section in (".text", ".text._ZN10b2ShapeDefD0Ev", ".text._ZN10b2ShapeDefD1Ev",
                        ".text._ZN12b2PolygonDefD0Ev", ".text._ZN12b2PolygonDefD1Ev",
                        ".text._ZNK6b2Vec26LengthEv"):
            self.assertEqual(classify("arm9", owner, set(), section), "source_dependency")
        for section in (None, ".text.polygon.source.99",
                        ".text.polygon.residual.00", ".text.polygon.unrecorded"):
            with self.assertRaisesRegex(ValueError, "unclassified polygon section"):
                classify("arm9", owner, set(), section)


if __name__ == "__main__":
    unittest.main()

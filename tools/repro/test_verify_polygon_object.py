#!/usr/bin/env python3
"""Guard complete-unit recovery, including local function boundaries."""

import copy
import json
from pathlib import Path
import tempfile
import unittest

from test_verify_recovered_objects import specimen
from verify_polygon_object import function_symbols, load_layout, verify_layout


LAYOUT = Path(__file__).resolve().parents[2] / "research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-method-layout.json"


class PolygonObjectTests(unittest.TestCase):
    def setUp(self):
        self.rows = load_layout(LAYOUT)
        self.identity = {"sections": [{"name": ".text", "size": 30768, "flags": 6}]}
        self.symbols = {r["name"]: (".text", r["offset"], r["size"]) for r in self.rows}

    def test_complete_source_accounting_and_abi(self):
        self.assertEqual(sum(r["size"] for r in self.rows), 30768)
        self.assertEqual(len(self.rows), 48)
        header = (LAYOUT.parents[1] / "Contrib/b2Polygon.h").read_text()
        self.assertNotIn("bool visited;", header)
        self.assertIn("b2Polygon *TraceEdge(b2Polygon* p);", header)
        self.assertIn("GetRightestConnection(b2PolyNode* incoming)", header)

    def test_malformed_layouts_fail(self):
        for key, value in (("source", 1), ("source", False), ("section", ".text.other"),
                           ("offset", 4), ("size", 807), ("compiler_variant", "base")):
            rows = copy.deepcopy(self.rows)
            rows[0][key] = value
            with tempfile.TemporaryDirectory() as directory:
                path = Path(directory) / "layout.json"
                path.write_text(json.dumps(rows))
                with self.assertRaises(ValueError):
                    load_layout(path)

    def test_complete_method_boundaries(self):
        verify_layout(self.rows, self.identity, self.symbols)
        for index in (0, 38, 47):
            symbols = dict(self.symbols)
            del symbols[self.rows[index]["name"]]
            with self.assertRaisesRegex(ValueError, "method boundary differs"):
                verify_layout(self.rows, self.identity, symbols)

    def test_changed_section_and_boundaries_fail(self):
        for key, value in (("name", ".text.partial"), ("size", 30764), ("flags", 2)):
            identity = copy.deepcopy(self.identity)
            identity["sections"][0][key] = value
            with self.assertRaisesRegex(ValueError, "executable section differs"):
                verify_layout(self.rows, identity, self.symbols)
        for field in range(3):
            symbols = dict(self.symbols)
            row = self.rows[0]
            boundary = list(symbols[row["name"]])
            boundary[field] = ".text.other" if field == 0 else boundary[field] + 4
            symbols[row["name"]] = tuple(boundary)
            with self.assertRaisesRegex(ValueError, "method boundary differs"):
                verify_layout(self.rows, self.identity, symbols)

    def test_function_symbol_reader_and_truncation(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "test.o"
            path.write_bytes(specimen())
            self.assertEqual(function_symbols(path), {"entry": (".text", 0, 8)})
            path.write_bytes(specimen()[:-1])
            with self.assertRaises(ValueError):
                function_symbols(path)

    def test_inactive_compiler_context_is_absent(self):
        source = (LAYOUT.parents[1] / "Contrib/b2Polygon.cpp").read_text()
        self.assertNotIn("TraceEdgeCompilerState", source)
        self.assertNotIn("#line", source)


if __name__ == "__main__":
    unittest.main()

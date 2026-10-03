#!/usr/bin/env python3
"""Guard complete-section selection and the reviewed polygon layout."""
import copy
import json
from pathlib import Path
import tempfile
import unittest

from prepare_polygon_object import load_layout, selection_options


LAYOUT = Path(__file__).resolve().parents[2] / "research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-method-layout.json"


class PolygonSelectionTests(unittest.TestCase):
    def setUp(self):
        self.rows = load_layout(LAYOUT)

    def test_boundary_and_byte_accounting(self):
        self.assertEqual(sum(r["size"] for r in self.rows if r["source"]), 8972)
        self.assertEqual(sum(r["size"] for r in self.rows if not r["source"]), 21796)
        self.assertEqual(sum(r["source"] for r in self.rows), 39)

    def test_malformed_layouts_are_rejected(self):
        changes = (("source", 1), ("section", ".text.polygon.source.99"),
                   ("offset", 4), ("size", 807))
        for key, value in changes:
            rows = copy.deepcopy(self.rows)
            rows[0][key] = value
            with tempfile.TemporaryDirectory() as directory:
                path = Path(directory) / "layout.json"
                path.write_text(json.dumps(rows))
                with self.assertRaises(ValueError):
                    load_layout(path)

    def test_selection_changes_only_symbol_binding(self):
        selected = [r for r in self.rows if r["source"]]
        identity = {"sections": [{"name": ".text." + r["name"], "size": r["size"], "flags": 6}
                                 for r in selected],
                    "exports": [[r["name"], ".text." + r["name"]] for r in self.rows]}
        options = selection_options(identity, self.rows)
        self.assertEqual(set(o.removeprefix("--weaken-symbol=") for o in options
                             if o.startswith("--weaken-symbol=")),
                         {r["name"] for r in self.rows if not r["source"]})
        self.assertTrue(all(o.startswith(("--weaken-symbol=", "--globalize-symbol=")) for o in options))
        identity["sections"][0]["size"] -= 4
        with self.assertRaisesRegex(ValueError, "compiler section differs"):
            selection_options(identity, self.rows)


if __name__ == "__main__":
    unittest.main()

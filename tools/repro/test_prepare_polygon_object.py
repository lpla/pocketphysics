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
        self.assertEqual(sum(r["size"] for r in self.rows if r["source"]), 12676)
        self.assertEqual(sum(r["size"] for r in self.rows if not r["source"]), 18092)
        self.assertEqual(sum(r["source"] for r in self.rows), 42)

    def test_malformed_layouts_are_rejected(self):
        changes = (("source", 1), ("section", ".text.polygon.source.99"),
                   ("offset", 4), ("size", 807), ("compiler_variant", "unrecorded"))
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
                         {r["name"] for r in self.rows if not r["source"] or
                          r.get("compiler_variant", "base") != "base"})
        self.assertTrue(all(o.startswith(("--weaken-symbol=", "--globalize-symbol=")) for o in options))
        identity["sections"][0]["size"] -= 4
        with self.assertRaisesRegex(ValueError, "compiler section differs"):
            selection_options(identity, self.rows)

    def test_controlled_variants_select_only_their_own_methods(self):
        for variant in ("membership", "constructor"):
            selected = [r for r in self.rows if r.get("compiler_variant") == variant]
            self.assertEqual(len(selected), 1)
            identity = {"sections": [{"name": ".text." + r["name"], "size": r["size"], "flags": 6}
                                     for r in selected],
                        "exports": [[r["name"], ".text." + r["name"]] for r in self.rows]}
            options = selection_options(identity, self.rows, variant)
            self.assertEqual(len(options), len(self.rows) - 1)
            self.assertTrue(all(o.startswith("--weaken-symbol=") for o in options))
            self.assertNotIn("--weaken-symbol=" + selected[0]["name"], options)

    def test_unknown_control_and_changed_executable_flags_fail(self):
        with self.assertRaisesRegex(ValueError, "unknown polygon compiler variant"):
            selection_options({}, self.rows, "unrecorded")
        row = next(r for r in self.rows if r.get("compiler_variant") == "membership")
        identity = {"sections": [{"name": ".text." + row["name"], "size": row["size"], "flags": 2}], "exports": []}
        with self.assertRaisesRegex(ValueError, "compiler section differs"):
            selection_options(identity, self.rows, "membership")


if __name__ == "__main__":
    unittest.main()

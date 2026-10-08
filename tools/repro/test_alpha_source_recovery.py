#!/usr/bin/env python3
"""Constrain the complete C alpha conversion and quantization reconstruction."""

import hashlib
import json
from pathlib import Path
import unittest


ROOT = Path(__file__).resolve().parents[2]
RECON = ROOT / "research/reconstruction/v06/dependencies/ulibrary"
SOURCE_PATH = "research/reconstruction/v06/dependencies/ulibrary/base/image/ulConvertImageToPalettedAlpha.c"


class AlphaSourceTests(unittest.TestCase):
    def test_complete_source_delta(self):
        current = (ROOT / SOURCE_PATH).read_bytes()
        original = current.replace(b"j * img->sizeX + i", b"j * width + i")
        original = original.replace(b"colorNb | ((a >> 5) << 5)", b"(colorNb & 31) | (a & ~31)")
        original = original.replace(b"colorNb | ((a >> 3) << 3)", b"(colorNb & 7) | (a & ~7)")
        self.assertEqual(hashlib.sha256(original).hexdigest(),
                         "20f04f2045a8b8cb8f641ac8bab375b49d734d8ed591b65fa59e2f069b353ee2")
        self.assertEqual(original.count(b"j * width + i"), 4)
        expected = original.replace(b"j * width + i", b"j * img->sizeX + i")
        expected = expected.replace(b"(colorNb & 31) | (a & ~31)", b"colorNb | ((a >> 5) << 5)")
        expected = expected.replace(b"(colorNb & 7) | (a & ~7)", b"colorNb | ((a >> 3) << 3)")
        self.assertEqual(current, expected)

    def test_quantization_equivalence_for_all_byte_values(self):
        for alpha in range(256):
            self.assertEqual((alpha >> 5) << 5, alpha & 224)
            self.assertEqual((alpha >> 3) << 3, alpha & 248)
            for color in range(32):
                self.assertEqual(color | ((alpha >> 5) << 5), (color & 31) | (alpha & ~31))
            for color in range(8):
                self.assertEqual(color | ((alpha >> 3) << 3), (color & 7) | (alpha & ~7))

    def test_whole_object_gate_and_no_residual_assembly(self):
        manifest = json.loads((RECON / "alpha-object-identity.json").read_text())
        row = manifest["objects"]["ulConvertImageToPalettedAlpha.o"]
        self.assertEqual(row["identity_sha256"], "163f15f146330b21434d71871d77f3abacf17e8fda83616472002b41e6af9e8b")
        self.assertEqual((row["allocated_bytes"], row["text_bytes"], row["residual_text_bytes"]), (432, 432, 0))
        self.assertFalse((RECON / "ulConvertImageToPalettedAlpha.S").exists())

    def test_whole_c_compilation_and_producer_control(self):
        recipe = (ROOT / "tools/repro/container_build_v06_exact.sh").read_text()
        self.assertIn('"${ul_o2_flags[@]}" -fno-tree-ccp -c', recipe)
        self.assertIn("alpha-object-identity.json", recipe)
        self.assertNotIn("ulConvertImageToPalettedAlpha.S", recipe)


if __name__ == "__main__":
    unittest.main()

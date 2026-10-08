#!/usr/bin/env python3
"""Constrain PNG source recovery, compiler context, and object gates."""

import hashlib
from pathlib import Path
import unittest

from prepare_ulibrary_png import recover_source, SOURCE_SHA256


ROOT = Path(__file__).resolve().parents[2]
RECON = ROOT / "research/reconstruction/v06/dependencies/ulibrary"
SOURCE = (RECON / "base/libLoadPng.c").read_bytes()


class PngSourceTests(unittest.TestCase):
    def test_preserved_source_identity_and_mutation_rejection(self):
        self.assertEqual(hashlib.sha256(SOURCE).hexdigest(), SOURCE_SHA256)
        with self.assertRaisesRegex(ValueError, "source identity"):
            recover_source(SOURCE + b" ")

    def test_complete_source_delta(self):
        read_begin = SOURCE.index(b"void ulPngReadFn(")
        read_end = SOURCE.index(b"void ulPngFlushFn(")
        read_body = SOURCE[read_begin:read_end]
        declarations = b"\tint convertAlpha = 0;\n\tu8 *alphaBuffer = NULL;\n"
        color_declaration = b"\tunsigned char r=0, g=0, b=0, a=0;\n"
        expected = SOURCE[:read_begin] + b"void ulPngReadFn(png_structp png_ptr, png_bytep data, png_size_t length);\n\n" + SOURCE[read_end:] + read_body
        expected = expected.replace(declarations, b"").replace(color_declaration, color_declaration + declarations)
        expected = expected.replace(b"int offset = (y * width + x) * 4;", b"")
        expected = expected.replace(b"alphaBuffer[offset", b"alphaBuffer[(y * pPngInfo->width + x) * 4")
        self.assertEqual(recover_source(SOURCE), expected)
        self.assertTrue(expected.endswith(read_body))

    def test_alpha_stores_reload_png_width(self):
        result = recover_source(SOURCE)
        self.assertEqual(result.count(b"alphaBuffer[(y * pPngInfo->width + x) * 4"), 4)
        self.assertNotIn(b"alphaBuffer[offset", result)
        self.assertNotIn(b"int offset =", result)

    def test_declarations_and_function_bodies_are_not_duplicated(self):
        result = recover_source(SOURCE)
        self.assertEqual(result.count(b"int convertAlpha = 0;"), 1)
        self.assertEqual(result.count(b"u8 *alphaBuffer = NULL;"), 1)
        self.assertEqual(result.count(b"void ulPngFlushFn("), 1)
        self.assertEqual(result.count(b"UL_IMAGE *ulLoadImagePNG("), 1)
        self.assertLess(result.index(b"void ulPngFlushFn("), result.index(b"UL_IMAGE *ulLoadImagePNG("))
        self.assertGreater(result.rindex(b"void ulPngReadFn("), result.index(b"UL_IMAGE *ulLoadImagePNG("))

    def test_linker_discards_only_private_unreferenced_data(self):
        script = (RECON / "png-object-layout.ld").read_text()
        self.assertEqual(script[script.index("SECTIONS"):].strip(),
                         "SECTIONS\n{\n  /DISCARD/ : { *(.bss.glGlob) }\n}")
        self.assertFalse((RECON / "libLoadPng.S").exists())

    def test_recipe_compiles_whole_c_and_checks_complete_objects(self):
        recipe = (ROOT / "tools/repro/container_build_v06_exact.sh").read_text()
        self.assertIn("prepare_ulibrary_png.py", recipe)
        self.assertIn("-Os -fno-unit-at-a-time -fdata-sections", recipe)
        self.assertIn("png-object-identities.json", recipe)
        self.assertNotIn("libLoadPng.S", recipe)
        self.assertNotIn("libLoadPng-asm.o", recipe)


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Constrain the two declaration-only recoveries and absence of post-link code."""

from pathlib import Path
import subprocess
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[2]
RECON = ROOT / "research/reconstruction/v06"


class SmallSourceRecoveryTests(unittest.TestCase):
    def test_fat_delta_is_only_the_declaration_order(self):
        original = (RECON / "dependencies/libfat/source/directory.c").read_bytes()
        before = b"\tu32 entrySize;\n\tu8 lfnEntry[DIR_ENTRY_DATA_SIZE];"
        after = b"\tu8 lfnEntry[DIR_ENTRY_DATA_SIZE];\n\tu32 entrySize;"
        self.assertEqual(original.count(before), 1)
        self.assertEqual((RECON / "dependencies/libfat/directory.c").read_bytes(),
                         original.replace(before, after))

    def test_keyboard_patch_changes_only_the_declaration_order(self):
        relative = "arm9/source/tobkit/keyboard.cpp"
        original = subprocess.check_output(["git", "show", "e9b621e:" + relative], cwd=ROOT)
        before, after = b"u8 xpos, ypos, offset;", b"u8 ypos, offset, xpos;"
        self.assertEqual(original.count(before), 1)
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / relative
            target.parent.mkdir(parents=True)
            target.write_bytes(original)
            subprocess.run(["git", "apply", "-p1", str(RECON / "arm9/keyboard-source.patch")],
                           cwd=directory, check=True, capture_output=True)
            self.assertEqual(target.read_bytes(), original.replace(before, after))

    def test_exact_build_never_invokes_post_link_replacement(self):
        script = (ROOT / "tools/repro/container_build_v06_exact.sh").read_text()
        self.assertNotIn("apply_reconstructed_sections", script)
        self.assertNotIn("reconstructed-regions", script)
        self.assertIn('cp "$SRC/src.arm9" "$OUT/pocketphysics.arm9"', script)

    def test_no_residual_arm9_region_sources_remain(self):
        self.assertFalse((RECON / "arm9/reconstructed-regions.S").exists())
        self.assertFalse((RECON / "arm9/reconstructed-regions.ld").exists())


if __name__ == "__main__":
    unittest.main()

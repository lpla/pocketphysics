#!/usr/bin/env python3
"""Check complete solver source against independently preserved archival inputs."""

import hashlib
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[2]
PATCH = ROOT / "research/reference/box2d-fixed-20080315/box2d_fixed.patch"
ORIGINAL = ROOT / "research/reference/box2d-r131"
RECOVERED = ROOT / "research/reconstruction/v06/dependencies/box2d"
FILES = {
    "Dynamics/b2Island.cpp": (
        "6df0b2af009cc9b58bed3f5a9491ead868caaa3c4aa513baa68239a5e53cd6b6",
        "24996c27aa12e6e273b8246812b8c7b876bb4deb69fc83018cc069487414475a"),
    "Dynamics/Contacts/b2ContactSolver.cpp": (
        "7608d0acd9c6dd410f742a9f42d07010c661d49a1647e93579fa573265686e79",
        "9159983a4a0aea8bd30aa644c7bc48ac8d8090925e7d89baa150787ea573a8ac"),
}


class ArchivedSolverTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.directory = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.directory.cleanup)
        cls.patched = Path(cls.directory.name) / "Source"
        shutil.copytree(ORIGINAL / "Dynamics", cls.patched / "Dynamics")
        subprocess.run([
            "git", "apply", "-p0",
            *["--include=Source/" + name for name in FILES], str(PATCH)],
            cwd=cls.directory.name, check=True, capture_output=True)

    def test_patch_identity(self):
        self.assertEqual(hashlib.sha256(PATCH.read_bytes()).hexdigest(),
                         "3e3b5c4e0d2d08eaac2c161fd1ffc55da24e786072916e28c07f4112773c09a9")

    def test_original_upstream_identities(self):
        for name, (original_hash, _) in FILES.items():
            with self.subTest(name=name):
                self.assertEqual(hashlib.sha256((ORIGINAL / name).read_bytes()).hexdigest(), original_hash)

    def test_exact_patch_outputs_without_local_edits(self):
        for name, (_, patched_hash) in FILES.items():
            with self.subTest(name=name):
                expected = (self.patched / name).read_bytes()
                self.assertEqual(hashlib.sha256(expected).hexdigest(), patched_hash)
                self.assertEqual((RECOVERED / name).read_bytes(), expected)

    def test_no_solver_assembly_or_linker_substitution(self):
        region = ROOT / "research/reconstruction/v06/arm9"
        self.assertFalse((region / "reconstructed-regions.S").exists())
        self.assertFalse((region / "reconstructed-regions.ld").exists())
        self.assertFalse((region / "mixed-sections.patch").exists())
        self.assertFalse(list((RECOVERED / "reconstructed").glob("*.S")))


if __name__ == "__main__":
    unittest.main()

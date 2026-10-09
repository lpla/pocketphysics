#!/usr/bin/env python3
"""Ensure local-only research outputs cannot masquerade as public evidence."""

from pathlib import Path
import tempfile
import unittest

from check_markdown_links import check_target, local_target, published_paths


class PublishedLinkTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.markdown = self.root / "README.md"
        self.markdown.write_text("# Research\n")
        public = self.root / "research/results/record.csv"
        public.parent.mkdir(parents=True)
        public.write_text("metric,value\n")
        self.published = published_paths({Path("README.md"), Path("research/results/record.csv")})

    def test_tracked_file(self):
        self.assertIsNone(check_target(self.root, self.markdown, "research/results/record.csv", self.published))

    def test_directory_with_tracked_content(self):
        self.assertIsNone(check_target(self.root, self.markdown, "research/results/", self.published))

    def test_existing_local_only_file_rejected(self):
        (self.root / "local.csv").write_text("not published\n")
        self.assertIn("not published", check_target(self.root, self.markdown, "local.csv", self.published))

    def test_existing_local_only_directory_rejected(self):
        (self.root / "local").mkdir()
        self.assertIn("not published", check_target(self.root, self.markdown, "local/", self.published))

    def test_missing_target_rejected(self):
        self.assertIn("missing", check_target(self.root, self.markdown, "missing.csv", self.published))

    def test_parent_escape_rejected(self):
        self.assertIn("escapes", check_target(self.root, self.markdown, "../outside", self.published))

    def test_symlink_escape_rejected(self):
        (self.root / "escape").symlink_to(self.root.parent, target_is_directory=True)
        self.assertIn("escapes", check_target(self.root, self.markdown, "escape/", self.published))

    def test_external_and_fragment_links(self):
        self.assertIsNone(local_target("https://example.com/report#results"))
        self.assertIsNone(local_target("#results"))
        self.assertEqual(local_target("<research/results/record.csv#results>"), "research/results/record.csv")


if __name__ == "__main__":
    unittest.main()

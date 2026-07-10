#!/usr/bin/env python3
"""Fail when a tracked Markdown file links to a missing local path."""

from __future__ import annotations

import re
import subprocess
from pathlib import Path
from urllib.parse import unquote


LINK = re.compile(r"]\(([^)\n]+)\)")
EXTERNAL_SCHEMES = ("http://", "https://", "mailto:", "data:")


def local_target(raw_target: str) -> str | None:
    target = raw_target.strip()
    if target.startswith("<") and ">" in target:
        target = target[1 : target.index(">")]
    else:
        target = target.split(maxsplit=1)[0]
    target = unquote(target).split("#", 1)[0]
    if not target or target.startswith(EXTERNAL_SCHEMES):
        return None
    return target


def main() -> int:
    root = Path(
        subprocess.check_output(["git", "rev-parse", "--show-toplevel"], text=True).strip()
    )
    tracked = subprocess.check_output(
        ["git", "ls-files", "-z", "*.md"], cwd=root
    ).split(b"\0")
    failures: list[str] = []
    checked = 0
    for encoded in tracked:
        if not encoded:
            continue
        markdown = root / encoded.decode()
        for line_number, line in enumerate(markdown.read_text().splitlines(), start=1):
            for match in LINK.finditer(line):
                target = local_target(match.group(1))
                if target is None:
                    continue
                checked += 1
                resolved = root / target.lstrip("/") if target.startswith("/") else markdown.parent / target
                try:
                    resolved.resolve().relative_to(root.resolve())
                except ValueError:
                    failures.append(f"{markdown.relative_to(root)}:{line_number}: path escapes repository: {target}")
                    continue
                if not resolved.exists():
                    failures.append(f"{markdown.relative_to(root)}:{line_number}: missing local target: {target}")
    if failures:
        raise SystemExit("\n".join(failures))
    print(f"Verified {checked} local links in tracked Markdown files.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

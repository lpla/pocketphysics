#!/usr/bin/env python3
"""Fail when a tracked Markdown file links outside the published Git tree."""

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


def published_paths(tracked: set[Path]) -> set[Path]:
    paths = set(tracked)
    for path in tracked:
        paths.update(path.parents)
    return paths


def check_target(root: Path, markdown: Path, target: str, published: set[Path]) -> str | None:
    resolved = root / target.lstrip("/") if target.startswith("/") else markdown.parent / target
    try:
        relative = resolved.resolve().relative_to(root.resolve())
    except ValueError:
        return f"path escapes repository: {target}"
    if not resolved.exists():
        return f"missing local target: {target}"
    if relative not in published:
        return f"target is not published in Git: {target}"
    return None


def main() -> int:
    root = Path(
        subprocess.check_output(["git", "rev-parse", "--show-toplevel"], text=True).strip()
    )
    tracked = {Path(encoded.decode()) for encoded in subprocess.check_output(
        ["git", "ls-files", "-z"], cwd=root
    ).split(b"\0") if encoded}
    published = published_paths(tracked)
    failures: list[str] = []
    checked = 0
    for relative in sorted(tracked):
        if relative.suffix != ".md":
            continue
        markdown = root / relative
        for line_number, line in enumerate(markdown.read_text().splitlines(), start=1):
            for match in LINK.finditer(line):
                target = local_target(match.group(1))
                if target is None:
                    continue
                checked += 1
                error = check_target(root, markdown, target, published)
                if error:
                    failures.append(f"{relative}:{line_number}: {error}")
    if failures:
        raise SystemExit("\n".join(failures))
    print(f"Verified {checked} local links against the published Git tree.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

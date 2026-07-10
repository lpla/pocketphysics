#!/usr/bin/env python3
"""Generate or verify the public inventory of binary files tracked by git."""

from __future__ import annotations

import argparse
import csv
import hashlib
import io
import subprocess
from pathlib import Path


BINARY_SUFFIXES = {
    ".bin",
    ".bmp",
    ".gif",
    ".jpeg",
    ".jpg",
    ".o",
    ".png",
    ".raw",
    ".rgb",
    ".swf",
    ".tgz",
    ".wav",
}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("research/provenance/tracked-binaries.csv"),
    )
    return parser.parse_args()


def category(path: str) -> tuple[str, str, str]:
    if path.startswith("build/") and path.endswith(".o"):
        return (
            "historical-compiled-object",
            "no",
            "Preserved from the imported project; never linked by tools/repro.",
        )
    if path == "gfx/rgb2bin":
        return (
            "historical-host-executable",
            "no",
            "Ancient 32-bit x86 ELF asset converter; preserved, never executed.",
        )
    if path == "pocketphysics_src.tgz":
        return (
            "historical-source-archive",
            "no",
            "Original repository archive; research builds use audited git commits.",
        )
    if path.startswith("press/") and path.endswith(".swf"):
        return (
            "archived-web-plugin",
            "no",
            "Third-party Flash asset in the preserved press-page snapshot.",
        )
    if path == "ndsloader.bin":
        return (
            "historical-runtime-blob",
            "no",
            "Original repository loader blob; never consumed by tools/repro.",
        )
    if path == "ppicon.bmp":
        return (
            "historical-media-asset",
            "yes",
            "Icon/title bitmap passed to historical ndstool packaging.",
        )
    if Path(path).suffix.lower() in {".raw", ".rgb", ".bin"}:
        return (
            "historical-data-asset",
            "no",
            "Original graphics/audio/table data; not executable research code.",
        )
    return (
        "historical-media-asset",
        "no",
        "Original image or audio asset preserved from the project history.",
    )


def is_binary(path: Path, data: bytes) -> bool:
    return path.suffix.lower() in BINARY_SUFFIXES or b"\0" in data[:8192]


def render(root: Path) -> str:
    tracked = subprocess.check_output(
        ["git", "ls-files", "-z"], cwd=root
    ).split(b"\0")
    rows: list[dict[str, object]] = []
    for raw_path in tracked:
        if not raw_path:
            continue
        relative = raw_path.decode("utf-8")
        path = root / relative
        if not path.is_file():
            continue
        data = path.read_bytes()
        if not is_binary(path, data):
            continue
        kind, used, note = category(relative)
        rows.append(
            {
                "path": relative,
                "size_bytes": len(data),
                "sha256": hashlib.sha256(data).hexdigest(),
                "category": kind,
                "used_by_tools_repro": used,
                "note": note,
            }
        )

    opaque_research = [row["path"] for row in rows if str(row["path"]).startswith("tools/repro/")]
    if opaque_research:
        raise SystemExit(f"Opaque binary files found under tools/repro: {opaque_research}")

    output = io.StringIO(newline="")
    writer = csv.DictWriter(
        output,
        fieldnames=(
            "path",
            "size_bytes",
            "sha256",
            "category",
            "used_by_tools_repro",
            "note",
        ),
        lineterminator="\n",
    )
    writer.writeheader()
    writer.writerows(sorted(rows, key=lambda row: str(row["path"])))
    return output.getvalue()


def main() -> int:
    args = parse_args()
    root = Path(
        subprocess.check_output(
            ["git", "rev-parse", "--show-toplevel"], text=True
        ).strip()
    )
    output = args.output if args.output.is_absolute() else root / args.output
    expected = render(root)
    if args.check:
        if not output.exists() or output.read_text() != expected:
            raise SystemExit(
                f"Binary inventory is stale: run {Path(__file__).name}"
            )
        print(f"Tracked binary inventory verified: {output}")
        return 0

    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(expected)
    print(f"Wrote tracked binary inventory: {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

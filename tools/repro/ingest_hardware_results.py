#!/usr/bin/env python3
"""Normalize flashcart benchmark CSVs and run the common in-ROM assertions."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import shutil
import subprocess
from collections import defaultdict
from pathlib import Path


RESULT_FIELDS = (
    "emulator",
    "label",
    "iteration",
    "status",
    "rom_sha256",
    "rom_size_bytes",
    "tag",
    "build",
    "metric",
    "count",
    "total_ticks",
    "mean_ticks",
    "min_ticks",
    "max_ticks",
    "budget_ticks",
    "over_budget",
    "checksum",
    "pass",
)
RAW_FIELDS = RESULT_FIELDS[6:]


def assignment(value: str) -> tuple[str, Path]:
    label, separator, raw_path = value.partition("=")
    if not separator or not label or not raw_path:
        raise argparse.ArgumentTypeError("expected LABEL=PATH")
    return label, Path(raw_path)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rom", action="append", type=assignment, required=True)
    parser.add_argument("--csv", action="append", type=assignment, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--hardware-model", required=True)
    parser.add_argument("--flashcart", required=True)
    parser.add_argument("--firmware", required=True)
    parser.add_argument("--max-timing-spread-percent", type=float, default=5.0)
    return parser.parse_args()


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def read_raw(path: Path) -> list[dict[str, str]]:
    with path.open(newline="") as handle:
        rows = list(csv.reader(handle))
    parsed: list[dict[str, str]] = []
    for row in rows:
        if not row or row[0] == "tag":
            continue
        if len(row) != len(RAW_FIELDS) or row[0] != "PPBENCH":
            raise SystemExit(f"Malformed benchmark row in {path}: {row}")
        parsed.append(dict(zip(RAW_FIELDS, row, strict=True)))
    if not parsed:
        raise SystemExit(f"No PPBENCH records found in {path}")
    return parsed


def main() -> int:
    args = parse_args()
    root = Path(
        subprocess.check_output(
            ["git", "rev-parse", "--show-toplevel"], text=True
        ).strip()
    )
    roms = dict(args.rom)
    if len(roms) != len(args.rom):
        raise SystemExit("Each --rom label must be unique")
    csvs: dict[str, list[Path]] = defaultdict(list)
    for label, path in args.csv:
        csvs[label].append(path)
    if set(roms) != set(csvs):
        raise SystemExit("--rom and --csv labels must match")

    for path in [*roms.values(), *(p for paths in csvs.values() for p in paths)]:
        if not path.is_file():
            raise SystemExit(f"Missing input: {path}")

    repeat_counts = {label: len(paths) for label, paths in csvs.items()}
    if len(set(repeat_counts.values())) != 1:
        raise SystemExit(f"Labels have different repetition counts: {repeat_counts}")
    repeats = next(iter(repeat_counts.values()))

    output = args.output.resolve()
    if output.exists():
        shutil.rmtree(output)
    raw_output = output / "raw"
    raw_output.mkdir(parents=True)

    result_path = output / "results.csv"
    source_files: list[dict[str, object]] = []
    with result_path.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=RESULT_FIELDS)
        writer.writeheader()
        for label in sorted(csvs):
            rom = roms[label].resolve()
            rom_hash = sha256(rom)
            rom_size = rom.stat().st_size
            for iteration, source in enumerate(csvs[label], start=1):
                source = source.resolve()
                raw_hash = sha256(source)
                archived = raw_output / f"{label}.{iteration}.csv"
                shutil.copyfile(source, archived)
                source_files.append(
                    {
                        "label": label,
                        "iteration": iteration,
                        "source_sha256": raw_hash,
                        "archived_path": str(archived.relative_to(output)),
                    }
                )
                for row in read_raw(source):
                    writer.writerow(
                        {
                            "emulator": "hardware",
                            "label": label,
                            "iteration": iteration,
                            "status": 0,
                            "rom_sha256": rom_hash,
                            "rom_size_bytes": rom_size,
                            **row,
                        }
                    )

    analyzer = root / "tools/repro/analyze_inrom.py"
    subprocess.run(
        [
            "python3",
            str(analyzer),
            str(result_path),
            str(output / "summary.csv"),
            str(output / "assertions.txt"),
            "--expected-repeats",
            str(repeats),
            "--max-timing-spread-percent",
            str(args.max_timing_spread_percent),
        ],
        check=True,
    )

    metadata = {
        "schema": 1,
        "emulator": "hardware",
        "hardware_model": args.hardware_model,
        "flashcart": args.flashcart,
        "firmware": args.firmware,
        "repeats": repeats,
        "max_timing_spread_percent": args.max_timing_spread_percent,
        "git_commit": subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=root, text=True
        ).strip(),
        "source_files": source_files,
    }
    (output / "metadata.json").write_text(
        json.dumps(metadata, indent=2, sort_keys=True) + "\n"
    )
    print(f"Hardware benchmark evidence: {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Require complete FAT/debug equivalence before accepting emulated DLDI output."""

import argparse
import csv
import hashlib
import json
import re
from pathlib import Path
from analyze_runtime import analyze, records
from check_melonds_config import check_run
from read_emulated_fat import read_root_file

PATTERN = r"PPBENCH,[^,\s]+,[^,\s]+(?:,[0-9-]+){7},[0-9a-fA-F]+,[01]"
FIELDS = [
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
]


def metrics(log: str) -> list[str]:
    return re.findall(PATTERN, log.replace("\r", "").replace("\n", ""))


def validate(out: Path, rom: Path, repeats: int, label: str) -> None:
    rom_hash = hashlib.sha256(rom.read_bytes()).hexdigest()
    results, manifest = [], []
    root = Path(__file__).resolve().parents[2]
    container_rom = "/workspace/" + rom.resolve().relative_to(root).as_posix()
    for iteration in range(1, repeats + 1):
        run = out / "runs" / f"{label}.{iteration}"
        status = (run / "exit-status.txt").read_text().strip()
        if status not in {"0", "124"}:
            raise AssertionError("Abnormal emulator exit")
        seed = (run / "seed.toml").read_bytes()
        check_run(run, seed, container_rom)
        image = run / "card.bin"
        payload = read_root_file(image, f"pp-runtime-{label}.log")
        (run / "fat-runtime.log").write_bytes(payload)
        fat = payload.decode("ascii")
        debug = (out / "logs" / f"{label}.{iteration}.stdout.log").read_text()
        debug += (out / "logs" / f"{label}.{iteration}.stderr.log").read_text()
        rows = metrics(fat)
        if (
            not rows
            or rows != metrics(debug)
            or records(fat, label) != records(debug, label)
        ):
            raise AssertionError("FAT file and debug records differ or are incomplete")
        values = {row.split(",")[2]: row.split(",")[4] for row in rows}
        if values.get("fat_available") != "1" or values.get("log_write_error") != "0":
            raise AssertionError("FAT availability or write-error gate failed")
        for row in rows:
            results.append(
                [
                    "melonds",
                    label,
                    iteration,
                    status,
                    rom_hash,
                    rom.stat().st_size,
                    *row.split(","),
                ]
            )
        manifest.append(
            dict(
                run=iteration,
                file_bytes=len(payload),
                file_sha256=hashlib.sha256(payload).hexdigest(),
                card_sha256=hashlib.sha256(image.read_bytes()).hexdigest(),
            )
        )
    with (out / "results.csv").open("w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(FIELDS)
        writer.writerows(results)
    analyze(out, repeats)
    if len({row["file_sha256"] for row in manifest}) != 1:
        raise AssertionError("Repeated FAT log payloads differ")
    (out / "fat-readback.json").write_text(
        json.dumps(
            dict(
                runs=manifest,
                scope="Complete runtime log write/readback through melonDS DLDI/FAT; not GUI sketch save/load or physical storage.",
            ),
            indent=2,
        )
        + "\n"
    )
    print(
        f"FAT readback: {repeats} complete, identical logs; all debug records and runtime gates match."
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("out", type=Path)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--repeats", type=int, required=True)
    parser.add_argument("--label", default="runtime-improved")
    args = parser.parse_args()
    validate(args.out, args.rom, args.repeats, args.label)

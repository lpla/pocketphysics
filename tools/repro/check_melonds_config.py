#!/usr/bin/env python3
"""Reject missing snapshots or unexpected melonDS boot-time configuration changes."""

import argparse
from pathlib import Path
import tomllib


def check_run(run, seed, rom):
    initial = (run / "melonDS.input.toml").read_bytes()
    if initial != seed:
        raise ValueError(f"{run}: input configuration differs from the tracked seed")
    expected = tomllib.loads(seed.decode("utf-8"))
    final = tomllib.loads((run / "melonDS.final.toml").read_text())
    if final.get("RecentROM") != [rom]:
        raise ValueError(f"{run}: unexpected recent-ROM record")
    final["RecentROM"] = []
    if final != expected:
        raise ValueError(f"{run}: settings changed or defaults were materialized during boot")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("out", type=Path)
    parser.add_argument("--repeats", type=int, required=True)
    parser.add_argument("--rom", action="append", required=True)
    args = parser.parse_args()
    if args.repeats < 1:
        parser.error("repeats must be positive")
    seed = Path(__file__).with_name("emulators").joinpath("melonds/melonDS.toml").read_bytes()
    count = 0
    for spec in args.rom:
        label, rom = spec.split("=", 1)
        for iteration in range(1, args.repeats + 1):
            check_run(args.out / "runs" / f"{label}.{iteration}", seed, rom)
            count += 1
    print(f"Verified {count} isolated melonDS input/final configuration pairs.")


if __name__ == "__main__":
    main()

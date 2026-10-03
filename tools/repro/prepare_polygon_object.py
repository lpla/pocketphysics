#!/usr/bin/env python3
"""Select release-verified C++ polygon methods before the relocatable link.

Only symbol binding is changed. Code, data, and relocations are not rewritten;
the reviewed linker layout selects complete compiler-emitted sections.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess

from verify_recovered_objects import object_identity

VARIANTS = {"base", "membership", "constructor"}


def load_layout(path: Path) -> list[dict]:
    rows = json.loads(path.read_text())
    offset = 0
    names = set()
    for index, row in enumerate(rows):
        if type(row["source"]) is not bool:
            raise ValueError("polygon source classification must be boolean")
        kind = "source" if row["source"] else "residual"
        if row["section"] != f".text.polygon.{kind}.{index:02d}":
            raise ValueError("unexpected polygon section name or order")
        if row["offset"] != offset or row["size"] <= 0 or row["size"] % 4:
            raise ValueError("invalid polygon method boundary")
        if row["name"] in names:
            raise ValueError("duplicate polygon method")
        names.add(row["name"])
        if row.get("compiler_variant", "base") not in VARIANTS:
            raise ValueError("unknown polygon compiler variant")
        offset += row["size"]
    if offset != 30768:
        raise ValueError("polygon executable layout does not cover the release unit")
    return rows


def selection_options(identity: dict, rows: list[dict], variant: str = "base") -> list[str]:
    if variant not in VARIANTS:
        raise ValueError("unknown polygon compiler variant")
    selected = {row["name"] for row in rows if row["source"] and
                row.get("compiler_variant", "base") == variant}
    sections = {section["name"]: section for section in identity["sections"]}
    for row in rows:
        if row["name"] in selected:
            section = sections.get(".text." + row["name"])
            if section is None or section["size"] != row["size"] or section["flags"] != 6:
                raise ValueError(f"compiler section differs: {row['name']}")
    options = ["--weaken-symbol=" + entry[0] for entry in identity["exports"]
               if entry[1].startswith(".text.") and entry[0] not in selected]
    # These unit-local constants remain C++ definitions and initializers. The
    # residual methods use their semantic names instead of release addresses.
    constants = ["b2_pi", "b2_linearSlop", "b2_angularSlop", "b2_toiSlop",
                 "b2_velocityThreshold",
                 "b2_maxLinearCorrection", "b2_maxAngularCorrection",
                 "b2_maxLinearVelocity", "b2_maxAngularVelocity",
                 "b2_contactBaumgarte", "b2_timeToSleep",
                 "b2_linearSleepTolerance", "b2_angularSleepTolerance",
                 "COLLAPSE_DIST_SQR"]
    if variant == "base":
        options.extend("--globalize-symbol=" + name for name in constants)
    return options


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("layout", type=Path)
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--objcopy", required=True)
    parser.add_argument("--variant", choices=sorted(VARIANTS), default="base")
    args = parser.parse_args()
    rows = load_layout(args.layout)
    options = selection_options(object_identity(args.source), rows, args.variant)
    subprocess.run([args.objcopy, "--strip-debug", *options,
                    str(args.source), str(args.output)], check=True)


if __name__ == "__main__":
    main()

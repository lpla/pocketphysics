#!/usr/bin/env python3
"""Inventory linked executable-section bytes and residual source boundaries.

This traces the exact build recipe through its linker maps. Executable sections
include literal pools and padding; counts are not disassembled instruction counts
and are not a percentage of reverse-engineering effort or semantic validation.
"""

from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re

from verify_recovered_objects import HEADER, SECTION


INPUT_ROW = re.compile(r"^\s+(\.\S+)\s+(0x[0-9a-fA-F]+)\s+(0x[0-9a-fA-F]+)\s+(.+)$")
CONTINUED_ROW = re.compile(r"^\s+(0x[0-9a-fA-F]+)\s+(0x[0-9a-fA-F]+)\s+(.+)$")
FILL_ROW = re.compile(r"^\s+\*fill\*\s+(0x[0-9a-fA-F]+)\s+(0x[0-9a-fA-F]+)")
ARCHIVE_MEMBER = re.compile(r"([^/]+\.a)\(([^)]+)\)$")
RESIDUAL_MEMBERS = {
    "arm7": {},
    "arm9": {"libul.a": {"ulib-historical-layout.o", "ulConvertImageToPalettedAlpha.o"},
             "libz.a": {"deflate.o"}},
}
SOURCE_ARCHIVES = {"libnds7.a", "libnds9.a", "libtinyxml.a", "libul.a", "libbox2d2.a", "libz.a", "libpng.a", "libfat.a"}
RUNTIME_ARCHIVES = {"libc.a", "libg.a", "libm.a", "libsysbase.a", "libgcc.a", "libgcov.a", "libstdc++.a", "libsupc++.a"}
STARTUP_OBJECTS = {"ds_arm7_crt0.o", "ds_arm9_crt0.o", "crti.o", "crtn.o", "crtbegin.o", "crtend.o"}


def executable_sections(path: Path) -> list[dict]:
    data = path.read_bytes()
    header = HEADER.unpack_from(data)
    if header[0][:7] != b"\x7fELF\x01\x01\x01" or header[1:4] != (2, 40, 1):
        raise ValueError("expected little-endian ARM executable ELF32")
    if header[11] != SECTION.size or not 0 < header[13] < header[12]:
        raise ValueError("invalid ELF section table")
    raw = [SECTION.unpack_from(data, header[6] + index * SECTION.size) for index in range(header[12])]
    names = raw[header[13]]
    strings = data[names[4]:names[4] + names[5]]
    result = []
    for section in raw:
        if section[2] & 6 != 6 or section[5] == 0:
            continue
        if section[1] != 1 or section[4] + section[5] > len(data):
            raise ValueError("executable section is not stored PROGBITS")
        name = strings[section[0]:strings.index(b"\0", section[0])].decode("ascii")
        payload = data[section[4]:section[4] + section[5]]
        result.append({"name": name, "address": section[3], "size": section[5],
                       "sha256": hashlib.sha256(payload).hexdigest()})
    result.sort(key=lambda section: section["address"])
    for before, after in zip(result, result[1:]):
        if before["address"] + before["size"] > after["address"]:
            raise ValueError("overlapping executable sections")
    return result


def map_rows(text: str) -> list[tuple[str, int, int, str]]:
    if "Linker script and memory map" not in text:
        raise ValueError("missing linker map body")
    text = text.split("Linker script and memory map", 1)[1]
    rows = []
    pending = None
    for line in text.splitlines():
        fill = FILL_ROW.match(line)
        row = INPUT_ROW.match(line)
        continuation = CONTINUED_ROW.match(line) if pending else None
        if fill:
            rows.append(("*fill*", int(fill[1], 16), int(fill[2], 16), "linker padding"))
        elif row:
            rows.append((row[1], int(row[2], 16), int(row[3], 16), row[4]))
        elif continuation:
            rows.append((pending, int(continuation[1], 16), int(continuation[2], 16), continuation[3]))
        pending = line.strip() if re.fullmatch(r"\s+\.\S+", line) else None
    return rows


def classify(cpu: str, owner: str, application_members: set[str], input_section: str | None = None) -> str:
    if owner in ("linker padding", "linker stubs"):
        return "linker_generated"
    member = ARCHIVE_MEMBER.search(owner)
    if member:
        archive, name = member.groups()
        if cpu == "arm9" and (archive, name) == ("libbox2d2.a", "b2Polygon.o"):
            if input_section in (".text", ".text._ZN10b2ShapeDefD0Ev", ".text._ZN10b2ShapeDefD1Ev",
                                 ".text._ZN12b2PolygonDefD0Ev", ".text._ZN12b2PolygonDefD1Ev",
                                 ".text._ZNK6b2Vec26LengthEv"):
                return "source_dependency"
            raise ValueError(f"unclassified polygon section: {input_section}")
        if cpu == "arm9" and archive == "libbox2d2.a" and name in ("b2ContactSolver.o", "b2Island.o"):
            if input_section == ".text":
                return "source_dependency"
            raise ValueError(f"unclassified solver section: {input_section}")
        if name in RESIDUAL_MEMBERS[cpu].get(archive, set()):
            return "residual_reconstruction"
        if archive in SOURCE_ARCHIVES:
            return "source_dependency"
        if archive in RUNTIME_ARCHIVES:
            return "source_runtime"
    name = Path(owner).name
    if name in STARTUP_OBJECTS:
        return "source_startup"
    if owner == name and name in application_members:
        return "source_application"
    raise ValueError(f"unclassified input object: {owner}")


def partition(sections: list[dict], inputs: list[dict], replacements: list[dict]) -> list[dict]:
    result = []
    for section in sections:
        start, end = section["address"], section["address"] + section["size"]
        relevant = [row for row in inputs if row["address"] < end and row["address"] + row["size"] > start]
        overlays = [row for row in replacements if row["address"] < end and row["address"] + row["size"] > start]
        edges = {start, end}
        for row in relevant + overlays:
            edges.update((max(start, row["address"]), min(end, row["address"] + row["size"])))
        edges = sorted(edges)
        for low, high in zip(edges, edges[1:]):
            owners = [row for row in relevant if row["address"] <= low and high <= row["address"] + row["size"]]
            overrides = [row for row in overlays if row["address"] <= low and high <= row["address"] + row["size"]]
            if len(owners) > 1 or len(overrides) > 1:
                raise ValueError(f"overlapping provenance at {low:#x}")
            row = overrides[0] if overrides else (owners[0] if owners else None)
            result.append({"section": section["name"], "address": low, "size": high - low,
                           "category": row["category"] if row else "unattributed",
                           "owner": row["owner"] if row else None})
    return result


def verify_ordinary_arm9(build: Path) -> None:
    if (build / "build/reconstructed-regions.elf").exists():
        raise ValueError("unexpected post-link reconstruction artifact")
    if (build / "pocketphysics.base.arm9").read_bytes() != (build / "pocketphysics.arm9").read_bytes():
        raise ValueError("ARM9 payload was modified after the ordinary link")


def inventory(build: Path, cpu: str) -> dict:
    if cpu == "arm9":
        verify_ordinary_arm9(build)
    elf = build / ("pocketphysics.base.arm9.elf" if cpu == "arm9" else "pocketphysics.arm7.elf")
    map_path = build / "src" / cpu / "build/.map"
    sections = executable_sections(elf)
    source = build / "src"
    application_members = {path.stem + ".o" for directory in [source / cpu, source / "generic"]
                           for suffix in ("*.c", "*.cpp", "*.s", "*.S") for path in directory.rglob(suffix)}
    inputs = []
    for name, address, size, owner in map_rows(map_path.read_text()):
        if size == 0 or not any(address < section["address"] + section["size"] and address + size > section["address"] for section in sections):
            continue
        inputs.append({"address": address, "size": size, "owner": owner,
                       "category": classify(cpu, owner, application_members, name)})
    rows = partition(sections, inputs, [])
    counts = Counter()
    for row in rows:
        counts[row["category"]] += row["size"]
    total = sum(section["size"] for section in sections)
    if sum(counts.values()) != total:
        raise ValueError("executable-byte accounting does not balance")
    return {"elf_sha256": hashlib.sha256(elf.read_bytes()).hexdigest(),
            "map_sha256": hashlib.sha256(map_path.read_bytes()).hexdigest(),
            "executable_section_bytes": total, "category_bytes": dict(sorted(counts.items())),
            "sections": sections, "ranges": rows}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("build", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    report = {"schema": 1, "processors": {cpu: inventory(args.build.resolve(), cpu) for cpu in ("arm7", "arm9")}}
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    for cpu, result in report["processors"].items():
        print(cpu, result["executable_section_bytes"], result["category_bytes"])


if __name__ == "__main__":
    main()

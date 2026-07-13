#!/usr/bin/env python3
"""Apply named source-built ELF sections to a raw ARM payload."""

from __future__ import annotations

import argparse
import hashlib
import struct
from dataclasses import dataclass
from pathlib import Path


ELF32_HEADER = struct.Struct("<16sHHIIIIIHHHHHH")
ELF32_SECTION = struct.Struct("<IIIIIIIIII")
ELF_MAGIC = b"\x7fELF"
EM_ARM = 40
ET_EXEC = 2
SHT_PROGBITS = 1
SHF_ALLOC = 2


@dataclass(frozen=True)
class Section:
    name: str
    address: int
    data: bytes


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def c_string(table: bytes, offset: int) -> str:
    end = table.find(b"\0", offset)
    if end < 0:
        raise ValueError("unterminated ELF section name")
    return table[offset:end].decode("ascii")


def read_sections(path: Path, prefix: str) -> list[Section]:
    image = path.read_bytes()
    if len(image) < ELF32_HEADER.size:
        raise ValueError(f"truncated ELF: {path}")
    header = ELF32_HEADER.unpack_from(image)
    ident, elf_type, machine = header[:3]
    if ident[:4] != ELF_MAGIC or ident[4] != 1 or ident[5] != 1:
        raise ValueError("overlay must be a 32-bit little-endian ELF")
    if elf_type != ET_EXEC or machine != EM_ARM:
        raise ValueError("overlay must be an ARM executable ELF")

    section_offset = header[6]
    section_entry_size = header[11]
    section_count = header[12]
    name_table_index = header[13]
    if section_entry_size != ELF32_SECTION.size or name_table_index >= section_count:
        raise ValueError("unsupported ELF section table")

    raw_sections = []
    for index in range(section_count):
        offset = section_offset + index * section_entry_size
        if offset + section_entry_size > len(image):
            raise ValueError("truncated ELF section table")
        raw_sections.append(ELF32_SECTION.unpack_from(image, offset))

    name_header = raw_sections[name_table_index]
    name_offset, name_size = name_header[4], name_header[5]
    names = image[name_offset : name_offset + name_size]
    if len(names) != name_size:
        raise ValueError("truncated ELF section-name table")

    result = []
    for raw in raw_sections:
        name_index, section_type, _, address, offset, size, _, _, _, _ = raw
        name = c_string(names, name_index)
        if not name.startswith(prefix) or size == 0:
            continue
        flags = raw[2]
        if section_type != SHT_PROGBITS or not flags & SHF_ALLOC:
            raise ValueError(f"reconstructed section has invalid type or flags: {name}")
        data = image[offset : offset + size]
        if len(data) != size:
            raise ValueError(f"truncated reconstructed section: {name}")
        result.append(Section(name, address, data))
    if not result:
        raise ValueError(f"no sections begin with {prefix!r}")
    return sorted(result, key=lambda section: section.address)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("base", type=Path)
    parser.add_argument("overlay", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--base-address", type=lambda value: int(value, 0), required=True)
    parser.add_argument("--prefix", default=".reconstructed.")
    parser.add_argument("--expect-base-sha256")
    parser.add_argument("--expect-output-sha256")
    args = parser.parse_args()

    payload = bytearray(args.base.read_bytes())
    actual_base_hash = sha256(payload)
    if args.expect_base_sha256 and actual_base_hash != args.expect_base_sha256:
        raise SystemExit(
            f"base SHA-256 mismatch: {actual_base_hash} != {args.expect_base_sha256}"
        )

    occupied: list[tuple[int, int, str]] = []
    for section in read_sections(args.overlay, args.prefix):
        start = section.address - args.base_address
        end = start + len(section.data)
        if start < 0 or end > len(payload):
            raise SystemExit(f"section outside payload: {section.name} at 0x{section.address:08x}")
        for prior_start, prior_end, prior_name in occupied:
            if start < prior_end and end > prior_start:
                raise SystemExit(f"overlap: {section.name} and {prior_name}")
        occupied.append((start, end, section.name))
        payload[start:end] = section.data
        print(f"{section.name}\t0x{section.address:08x}\t{len(section.data)}")

    output_hash = sha256(payload)
    if args.expect_output_sha256 and output_hash != args.expect_output_sha256:
        raise SystemExit(
            f"output SHA-256 mismatch: {output_hash} != {args.expect_output_sha256}"
        )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(payload)
    print(f"SHA256\t{output_hash}\t{args.output}")


if __name__ == "__main__":
    main()

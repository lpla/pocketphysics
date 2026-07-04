#!/usr/bin/env python3
"""Render a raw little-endian payload as auditable GNU assembly words."""

from pathlib import Path
import argparse


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--label", required=True)
    args = parser.parse_args()

    payload = args.input.read_bytes()
    if len(payload) % 4:
        raise SystemExit(f"{args.input}: payload size is not a multiple of four")

    words = [
        int.from_bytes(payload[offset : offset + 4], "little")
        for offset in range(0, len(payload), 4)
    ]
    lines = [
        "/*",
        " * Disassembly-derived archival reconstruction.",
        " * This is recovered assembly data, not the original C/C++ source.",
        f" * Payload bytes: {len(payload)}",
        " */",
        ".syntax unified",
        '.section .payload,"a",%progbits',
        ".balign 4",
        f".global {args.label}_start",
        f".global {args.label}_end",
        f"{args.label}_start:",
    ]
    for offset in range(0, len(words), 8):
        group = ", ".join(f"0x{word:08x}" for word in words[offset : offset + 8])
        lines.append(f"    .word {group}")
    lines.extend((f"{args.label}_end:", ".section .note.GNU-stack,\"\",%progbits", ""))

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text("\n".join(lines), encoding="ascii")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

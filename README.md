# Pocket Physics

![Original Pocket Physics on Nintendo DS](screenshots/pp.png)

Pocket Physics is a 2008 Nintendo DS drawing and physics sandbox by 0xtob.
This fork preserves the original history and publishes source reconstruction,
reproducible builds, bug-fix experiments, and in-ROM performance research.

## Build Roles

| Role | Purpose | Single Build |
| --- | --- | --- |
| Historical | Reconstruct v0.6 byte for byte from source, preserving historical behavior | `tools/repro/build_v06_exact.sh` |
| Modern | Compatibility port to a locked newer stack, using floating-point Box2D | `tools/repro/build_v06_blocksds.sh` |
| Improved | Selected fixes and optimizations, using fixed-point DS hardware math | `tools/repro/build_v06_perf.sh` |

The [build guide](docs/build-guide.md) gives requirements, commands, output
paths, hashes, numerical modes, and limitations for each role. "Modern" is a
pinned experimental baseline, not a claim to use the newest available packages.
The independent release-payload repack is only a packaging control, not the
historical source build.

The historical ROM's SHA-256 is
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
Every linked implementation compiles from C/C++ or genuine low-level assembly;
the ordinary ARM9 link and complete ARM7/ROM match the 2008 release without
executable transcriptions or post-link replacements. The
[source inventory](docs/executable-source-coverage.md) attributes 99.99% of
executable-section bytes to source-built implementations and 80 bytes to linker
output. Unused archive-only zlib `deflate` recovery remains open. Byte identity
does not establish the author's exact original expressions or bug-free behavior.

## Reproduce

Requirements: full Git history, Docker with `linux/amd64` support, Python 3.11
or later, `curl`, `unzip`, and a host GCC/Clang with AddressSanitizer support.

```sh
git clone https://github.com/lpla/pocketphysics.git
cd pocketphysics
tools/repro/test_all.sh
```

The suite checks independent historical, modern, and improved builds,
the packaging control, source integrity, regression cases, and repeated
touch/physics/render workloads in melonDS 1.1. Public CI uses a single-run
smoke configuration; published comparisons use three repetitions.
DeSmuME is supplemental and does not determine optimization selection.

## Results and Limits

[Published results](research/results/README.md) bind measurements to clean
source revisions, emulator configuration, ROM hashes, raw records, and
machine-checked assertions. The selected improved specimen removes the
reproduced hit-test leak and reduces measured physics time relative to both
controls in the tested sketch. These are in-ROM timer measurements, not host
wall-clock benchmarks.

The benchmark directly sequences real touch dispatch, physics, and canvas
operations. It does not execute the complete normal VBlank/foreground/audio
loop. Numerical modes also differ across roles, so the comparison does not
isolate dependency updates. Full-app responsiveness, broader workflow coverage,
and physical DS validation remain [open research](docs/research-frontier.md).

- [Build and reproducibility protocol](docs/reproducibility.md)
- [Historical reconstruction and recovery reports](docs/reverse-engineering.md)
- [In-ROM workload and measurement boundary](docs/benchmarking.md)
- [melonDS configuration and run integrity](docs/emulator-run-integrity.md)
- [Optimization attribution and candidate decisions](docs/optimization-study.md)
- [Physical Nintendo DS collection procedure](docs/real-hardware.md)
- [Input provenance, binary inventory, and licenses](docs/provenance.md)

## License

Pocket Physics is GPLv3; see [gpl-3.0.txt](gpl-3.0.txt). Third-party inputs retain
their licenses and are pinned in the [input lock](research/provenance/input-locks.csv).

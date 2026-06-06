# Pocket Physics v0.6 Reproducibility

This branch reconstructs the Pocket Physics v0.6 Nintendo DS build from the
repository history plus pinned third-party source archives.

## Release Baseline

GameBrew lists Pocket Physics version 0.6, last updated 2008-03-16. Its v0.6
changelog includes "Massive speed optimizations" and a move to Box2D 2.0.

Verified release archive:

| Artifact | SHA256 |
| --- | --- |
| `pocketphysics-gamebrew.zip` | `953c950217b14610039338918d4849f9ba5ab2ef44b9c92bb902296e5961cfb6` |
| `pocketphysics.nds` | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| `pocketphysics_nothumb.nds` | `64a15ff6c0e0e7235dd716833d68f8adaa9043afc867f5b6523d9c73750e586a` |

To verify/extract a local copy of the release zip:

```sh
tools/repro/extract_release_v06.sh .codex-artifacts/downloads/pocketphysics-gamebrew.zip
```

## Rebuilt Source Inputs

The build starts from git commit `e9b621e` (`2008-03-15 Version 0.6`) and
backfills files that were missing from that historical commit but later restored
in `3e538e0`:

- `arm9/source/PPBoundaryListener.{h,cpp}`
- `arm9/data/icon_back.raw`
- `arm9/data/icon_delete_file.raw`
- `arm9/data/icon_load.raw`
- `arm9/data/icon_move.raw`
- `arm9/data/icon_save.raw`

Pinned third-party sources:

| Dependency | Source | SHA256 |
| --- | --- | --- |
| Box2D 2.0.1 | Debian snapshot `box2d_2.0.1+dfsg1.orig.tar.gz` | `ff35fa514b6a7bcdfd1d83c499d57cdd4dfec7adb1b42aeaeb8dbedfb069fdb0` |
| TinyXML 2.6.2 | Debian snapshot `tinyxml_2.6.2.orig.tar.gz` | `15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593` |
| Convex decomposition helpers | `91Act/box2d_fixed` commit `893e0d71a0fbffdbb3ccbd61c166311525be5ada` | Per-file hashes in `tools/repro/build_v06_blocksds.sh` |

Toolchain container:

```text
skylyrac/blocksds:slim-v1.20.0
```

The build installs BlocksDS packages inside the container and records the exact
package versions in `.codex-artifacts/build/v06-blocksds/logs/toolchain-packages.txt`.
The verified package set for the current build is:

```text
blocksds-toolchain 1.20.0-1
blocksds-ulibrary 1.14-1
toolchain-gcc-arm-none-eabi-gcc 1:16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-binutils 2.46.0-1
toolchain-gcc-arm-none-eabi-libstdcxx-picolibc 16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-picolibc-generic 1.8.11.r26127.2a7b920f5-1
toolchain-gcc-arm-none-eabi-libpng16 1.6.58-1
toolchain-gcc-arm-none-eabi-zlib 1.3.2-1
runtime-zlib 1.3.2-1
```

## Build Profiles

The default profile is the reproduced modern-dependency baseline. The proposed
performance profile restores Box2D's fixed-point `float32` mode for the DS and
uses the best-performing optimization setting from the local matrix.

| Profile | Box2D numeric mode | ARM9 mode | Optimization | Purpose |
| --- | --- | --- | --- | --- |
| `repro` | `float` | Thumb | `-O3` | Deterministic updated-dependency rebuild |
| `perf`, `perf-o2` | fixed-point | Thumb | `-O2` | Proposed improved build |
| `perf-o3` | fixed-point | Thumb | `-O3` | Larger comparison build |
| `perf-os` | fixed-point | Thumb | `-Os` | Smallest comparison build |
| `perf-arm` | fixed-point | ARM | `-O3` | ARM-mode comparison build |

## Build

```sh
tools/repro/build_v06_blocksds.sh
```

Current rebuilt ROM with updated dependencies:

```text
.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds
SHA256 1fd396ead6954c83ff59e5698f3b91187d99ca6ae054b61e6c048fc445563211
Size 739328 bytes
ARM9 ELF size: text=630128 data=1424 bss=11340
```

Build the proposed improved profile:

```sh
tools/repro/build_v06_perf.sh
```

Current improved ROM:

```text
.codex-artifacts/build/v06-blocksds-perf/pocketphysics-v0.6-blocksds.nds
SHA256 4fb2d4c9aac4307f0146456ad23baeaaa2ab8bef6bf3db9faec187049730da2d
Size 772096 bytes
ARM9 ELF size: text=662616 data=1480 bss=11484
```

## Test And Benchmark

Full baseline reproducibility smoke test:

```sh
tools/repro/test_v06_repro.sh
```

The test builds two fresh output directories and byte-compares the resulting
ROMs. The current verified reproducible SHA256 is
`1fd396ead6954c83ff59e5698f3b91187d99ca6ae054b61e6c048fc445563211`.

Full improved-profile reproducibility smoke test:

```sh
tools/repro/test_v06_perf.sh
```

The test builds two fresh improved output directories and byte-compares the
resulting ROMs. The current verified improved SHA256 is
`4fb2d4c9aac4307f0146456ad23baeaaa2ab8bef6bf3db9faec187049730da2d`.

Benchmark the 2008 release, rebuilt ROM, and improved ROM:

```sh
tools/repro/benchmark_roms.sh
```

The DeSmuME CLI used here does not expose an exact "run N frames and report FPS"
mode. The benchmark therefore records repeatable host-side emulator proxy metrics
over a fixed wall-clock duration, with raw emulator logs preserved for audit.
Use it for comparative regression detection, not as a direct Nintendo DS FPS
measurement.

The benchmark intentionally stops DeSmuME with `timeout`, so status `124` is
the expected successful benchmark status.

## Verified Artifacts

| Role | Path | SHA256 | Size |
| --- | --- | --- | --- |
| 2008 v0.6 release | `.codex-artifacts/release-v0.6/gamebrew/PocketPhysics-v0.6/pocketphysics.nds` | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` | 894016 |
| Rebuilt updated-dependency ROM | `.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds` | `1fd396ead6954c83ff59e5698f3b91187d99ca6ae054b61e6c048fc445563211` | 739328 |
| Improved fixed-point ROM | `.codex-artifacts/build/v06-blocksds-perf/pocketphysics-v0.6-blocksds.nds` | `4fb2d4c9aac4307f0146456ad23baeaaa2ab8bef6bf3db9faec187049730da2d` | 772096 |

## Final Comparison

Run on 2026-06-05:

```sh
REPEATS=10 DURATION=15 OUT=.codex-artifacts/benchmarks/final-comparison-o2 \
    tools/repro/benchmark_roms.sh
```

Summary from `.codex-artifacts/benchmarks/final-comparison-o2/results.csv`:

| ROM | Repeats | Status | Mean CPU seconds | CPU stddev | Mean RSS KB |
| --- | ---: | ---: | ---: | ---: | ---: |
| 2008 release | 10 | 124 | 28.19 | 0.361 | 210729 |
| Rebuilt updated deps | 10 | 124 | 32.24 | 0.425 | 209481 |
| Improved fixed-point `-O2` | 10 | 124 | 32.29 | 0.450 | 210455 |

Lower CPU seconds are better for this host-side DeSmuME proxy. The rebuilt ROM
is 17.3% smaller than the 2008 release ROM, and the improved fixed-point ROM is
13.6% smaller than the 2008 release ROM. The proxy does not show a meaningful
speed win for the fixed-point build over the float rebuild, and the original
2008 release remains the cheapest binary in this emulator measurement.

## Optimization Matrix

The `perf` profile was selected from this shorter matrix:

```sh
BUILD_PROFILE=perf-o3 OUT=.codex-artifacts/build/perf-o3 \
    tools/repro/build_v06_blocksds.sh
BUILD_PROFILE=perf-o2 OUT=.codex-artifacts/build/perf-o2 \
    tools/repro/build_v06_blocksds.sh
BUILD_PROFILE=perf-os OUT=.codex-artifacts/build/perf-os \
    tools/repro/build_v06_blocksds.sh

REPEATS=5 DURATION=8 OUT=.codex-artifacts/benchmarks/optimization-matrix \
    tools/repro/benchmark_roms.sh \
    release-2008=.codex-artifacts/release-v0.6/gamebrew/PocketPhysics-v0.6/pocketphysics.nds \
    rebuilt-float-o3=.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds \
    fixed-o3=.codex-artifacts/build/perf-o3/pocketphysics-v0.6-blocksds.nds \
    fixed-o2=.codex-artifacts/build/perf-o2/pocketphysics-v0.6-blocksds.nds \
    fixed-os=.codex-artifacts/build/perf-os/pocketphysics-v0.6-blocksds.nds
```

| ROM | Size | Mean CPU seconds | CPU stddev | Mean RSS KB |
| --- | ---: | ---: | ---: | ---: |
| 2008 release | 894016 | 14.99 | 0.155 | 208546 |
| Rebuilt float `-O3` | 739328 | 17.14 | 0.141 | 209438 |
| Fixed-point `-O3` | 842752 | 17.12 | 0.118 | 210678 |
| Fixed-point `-O2` | 772096 | 17.10 | 0.157 | 209247 |
| Fixed-point `-Os` | 696320 | 17.26 | 0.086 | 209017 |

The `-O2` fixed-point profile was chosen because it was the best fixed-point
candidate in this matrix while avoiding the ROM-size bloat of `-O3`.

## Interpretation

The reproducible rebuild is successful: it reconstructs v0.6 from the 2008 git
commit plus pinned third-party source archives, builds under a pinned BlocksDS
container, and produces byte-identical ROMs across fresh output directories.

The proposed improvement is intentionally conservative. Pocket Physics was
written for Nintendo DS hardware without an FPU, and the original project had
Box2D fixed-point work in its history. This branch restores that mode in the
modern build and adds profile-specific test coverage. The current DeSmuME CLI
benchmark does not prove a real speedup over the float rebuild, so the fixed
profile should be treated as the best DS-appropriate candidate from this pass,
not as a verified gameplay FPS win.

Recommended next measurements:

- Add an in-ROM deterministic physics benchmark that reports simulation ticks
  or frame timing through emulator stdout, memory, or a known save/debug channel.
- Repeat the final comparison on real DS hardware or an emulator with a reliable
  frame counter.
- Triage modern compiler warnings in the old UI and allocation code before doing
  broader behavior changes.

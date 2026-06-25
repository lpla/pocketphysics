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
blocksds-toolchain 1.21.1-1
blocksds-ulibrary 1.14-1
runtime-zlib 1.3.2-1
toolchain-gcc-arm-none-eabi-binutils 2.46.0-1
toolchain-gcc-arm-none-eabi-gcc 1:16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-gcc-libs 1:16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-libpng16 1.6.58-1
toolchain-gcc-arm-none-eabi-libstdcxx-picolibc 16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-picolibc-generic 1.8.11.r26127.2a7b920f5-1
toolchain-gcc-arm-none-eabi-zlib 1.3.2-1
```

## Build Profiles

The default profile is the reproduced modern-dependency baseline. The proposed
performance profile uses the best in-ROM benchmark result from the profile
matrix: Box2D fixed-point math, ARM mode, `-O3`, and targeted runtime bug fixes.

| Profile | Box2D numeric mode | ARM9 mode | Optimization | Purpose |
| --- | --- | --- | --- | --- |
| `repro` | `float` | Thumb | `-O3` | Deterministic updated-dependency rebuild |
| `perf` | fixed-point | ARM | `-O3` | Proposed improved build |
| `perf-o2` | fixed-point | Thumb | `-O2` | Rejected matrix candidate |
| `perf-o3` | fixed-point | Thumb | `-O3` | Matrix candidate |
| `perf-os` | fixed-point | Thumb | `-Os` | Matrix candidate |
| `perf-arm` | fixed-point | ARM | `-O3` | Same code-generation strategy as `perf` |
| `bench-*` | varies | varies | varies | Instrumented ROMs that emit in-ROM CSV rows |

The runtime fixes currently covered by the in-ROM benchmark are:

- Replace the per-hit-test heap `new b2AABB` allocation in `World::getThingsAt`
  with a stack `b2AABB`.
- Replace `delete id_table` with `free(id_table)` for the `calloc`-allocated
  load table in `World::load`.

## Build

Build the reproduced updated-dependency baseline:

```sh
tools/repro/build_v06_blocksds.sh
```

Current rebuilt ROM with updated dependencies:

```text
.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds
SHA256 e82787396c2fc96630951dda980d15bb85a684a80fa73776356acc6acb921190
Size 739328 bytes
ARM9 ELF size: text=630128 data=1432 bss=11340
```

Build the proposed improved profile:

```sh
tools/repro/build_v06_perf.sh
```

Current improved ROM:

```text
.codex-artifacts/build/v06-blocksds-perf/pocketphysics-v0.6-blocksds.nds
SHA256 d7d652e3275cd7a394ccda0f83ce3946bec21795a46e9e0f27f6a72c4e86fc85
Size 897024 bytes
ARM9 ELF size: text=787536 data=1488 bss=11484
```

## Test And Benchmark

Byte-reproducibility tests:

```sh
tools/repro/test_v06_repro.sh
tools/repro/test_v06_perf.sh
```

Those tests build two fresh output directories per profile and byte-compare the
resulting ROMs. They intentionally do not use host wall-clock emulator timing.

End-to-end in-ROM benchmark test:

```sh
tools/repro/test_v06_inrom.sh
```

The benchmark ROM creates a deterministic touch workload through the real
`Canvas` pen APIs: solid floor/platform strokes, dynamic boxes, circles,
polygons, a pin, repeated hit tests, a simulated drag, 240 physics steps, and
240 object-render frames. The ROM emits `PPBENCH` CSV rows containing DS CPU
timer ticks, counts, min/max, checksums, and pass/fail fields.

The harness can collect rows from a FAT `ppbench.csv` file when available, or
from the emulator debug stream. `timeout` status `124` is expected because the
ROM deliberately idles after emitting benchmark rows; timeout duration is not a
performance metric.

The 2008 release binary is verified by SHA256 below, but it cannot emit in-ROM
timing rows without modifying or binary-patching it. The empirical timing
comparison therefore uses the source-equivalent instrumented `bench-repro` ROM
against the instrumented proposed `bench-perf` ROM. The uninstrumented 2008
release remains the binary baseline for artifact verification and boot testing.

## Verified Artifacts

| Role | Path | SHA256 | Size |
| --- | --- | --- | --- |
| 2008 v0.6 release | `.codex-artifacts/release-v0.6/gamebrew/PocketPhysics-v0.6/pocketphysics.nds` | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` | 894016 |
| Rebuilt updated-dependency ROM | `.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds` | `e82787396c2fc96630951dda980d15bb85a684a80fa73776356acc6acb921190` | 739328 |
| Improved fixed-point ARM/O3 ROM | `.codex-artifacts/build/v06-blocksds-perf/pocketphysics-v0.6-blocksds.nds` | `d7d652e3275cd7a394ccda0f83ce3946bec21795a46e9e0f27f6a72c4e86fc85` | 897024 |
| Instrumented reproduced baseline | `.codex-artifacts/build/bench-repro/pocketphysics-v0.6-blocksds.nds` | `57e2b43c6cd3a66c7b7dd49c98fd34d518d6614a465a5663f30bdd4aaae41f4d` | 703488 |
| Instrumented improved build | `.codex-artifacts/build/bench-perf/pocketphysics-v0.6-blocksds.nds` | `08319b5c4afae10cc2de0e6b303a3125100cf0de09ea1da7e3cf244fbbbda665` | 862208 |

## Final In-ROM Comparison

Run on 2026-06-25:

```sh
REPEATS=3 DURATION=20 OUT=.codex-artifacts/benchmarks/inrom-final \
    tools/repro/benchmark_inrom.sh
```

Assertions from `.codex-artifacts/benchmarks/inrom-final/assertions.txt`:

```text
bench-perf overall_pass=1
bench-repro overall_pass=0 as expected for unfixed baseline
bench-perf mean ticks lower than bench-repro for touch, hit-test, physics, render, and frame-total metrics
bench-perf hit-test heap delta fixed from positive bytes to 0
```

Summary from `.codex-artifacts/benchmarks/inrom-final/summary.csv`:

| Metric | Reproduced baseline mean ticks | Improved mean ticks | Delta |
| --- | ---: | ---: | ---: |
| Touch create and drag | 15575 | 13006 | -16.49% |
| Hit test | 3634 | 2036 | -43.97% |
| Physics step | 617736 | 536888 | -13.09% |
| Render frame | 301418 | 201819 | -33.04% |
| Frame total | 919710 | 739343 | -19.61% |
| Hit-test heap delta bytes | 14416 | 0 | -100.00% |
| Overall pass | 0 | 1 | fixed |

The repeated runs were deterministic in DeSmuME interpreter mode: each metric's
min and max were identical across the three repeats, and checksums were stable
within each build.

The frame metric is still over a nominal 60 Hz budget for much of this stress
scene (`over_budget_total=606` across 720 optimized frames). The claim here is a
measured improvement and fixed leak under a reproducible touch/physics workload,
not a guarantee that this scene now holds 60 Hz on every DS frame.

## Profile Selection

The selected profile came from a one-repeat in-ROM matrix in
`.codex-artifacts/benchmarks/profile-selection`:

| Candidate | Frame total delta vs `bench-repro` | Physics delta | Hit-test delta | Result |
| --- | ---: | ---: | ---: | --- |
| Float Thumb/O3 runtime fixes | -0.34% | -0.60% | -15.44% | Fixes leak, small speedup |
| Float Thumb/O2 runtime fixes | -1.38% | -2.33% | -12.03% | Fixes leak, small speedup |
| Float ARM/O3 runtime fixes | +1.46% | +3.23% | -15.38% | Rejected |
| Fixed Thumb/O2 runtime fixes | +2.70% | +19.15% | +9.03% | Rejected |
| Fixed ARM/O3 runtime fixes | -19.63% | -13.08% | -44.11% | Selected |

This matters because the first fixed-point attempt was slower for physics. The
final proposal is not "fixed-point because the DS has no FPU"; it is the
specific fixed-point ARM/O3 profile that won the in-ROM workload.

## Real Hardware Notes

For flashcart or real-hardware runs, build the benchmark ROMs and run:

```sh
REPEATS=1 DURATION=20 OUT=.codex-artifacts/benchmarks/inrom-hw-prep \
    tools/repro/benchmark_inrom.sh
```

Then copy `.codex-artifacts/build/bench-repro/pocketphysics-v0.6-blocksds.nds`
and `.codex-artifacts/build/bench-perf/pocketphysics-v0.6-blocksds.nds` to the
device. When FAT is available, the ROM writes `ppbench.csv`; otherwise use a
debug console path that captures `PPBENCH` rows. Do not compare wall-clock time
spent sitting in the post-benchmark idle loop.

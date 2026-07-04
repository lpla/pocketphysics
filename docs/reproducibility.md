# Pocket Physics v0.6 Reproduction And Benchmark

This repository now supports three independently identified Pocket Physics v0.6
builds:

1. `historical`: a byte-exact reconstruction of the public 2008 ROM.
2. `modern`: the v0.6 C++ source ported to current BlocksDS dependencies and tools.
3. `improved`: the modern port plus measured runtime fixes and optimizations.

No host wall-clock timing is used for performance claims. Instrumented ROMs read
the Nintendo DS ARM9 TIMER0+TIMER1 cascade at the 33.513982 MHz bus clock.

## Exact 2008 Reconstruction

The public release is:

```text
SHA256 9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64
Size   894016 bytes
```

Build and verify it with:

```sh
tools/repro/build_v06_exact.sh
tools/repro/test_v06_exact.sh
```

`test_v06_exact.sh` performs two clean builds and byte-compares ARM9, ARM7, and
the final NDS ROM. Both clean final verification builds produced the public hash.

The historical toolchain is devkitARM r21 (GCC 4.1.2, binutils 2.17) with archive
SHA256:

```text
7a3e1ab1c7d3f3a98389f3bd78ad52826fe65b2d869c3b1f187c068b989ae203
```

The build downloads that checksum-pinned archive when it is not cached, runs it
in a digest-pinned Debian container, assembles ARM9 and ARM7, and packages with
the historical ndstool 1.36.

Important provenance limitation: `tools/repro/exact_source/recovered_arm*.S` is
a disassembly-derived archival assembly reconstruction. It is source accepted by
the historical assembler and does not read or embed the release ROM during a
normal build, but it is not a recovery of the author's original C++ translation
units. The modern build is the maintainable C++ reconstruction.

## Modern Dependencies

The modern build starts at git commit `e9b621e` and backfills files restored in
`3e538e0`. Third-party source inputs are checksum-pinned:

| Input | Version |
| --- | --- |
| Box2D | 2.0.1 |
| TinyXML | 2.6.2 |
| Convex decomposition helpers | commit `893e0d71a0fbffdbb3ccbd61c166311525be5ada` |
| BlocksDS toolchain | 1.21.1-1 |
| BlocksDS uLibrary | 1.14-1 |
| GCC ARM | 16.0.1 snapshot package |
| binutils | 2.46.0-1 |
| zlib | 1.3.2-1 |
| libpng | 1.6.58-1 |

Build the uninstrumented ROMs with:

```sh
tools/repro/build_v06_blocksds.sh
tools/repro/build_v06_perf.sh
```

Run two-clean-build byte comparisons with:

```sh
tools/repro/test_v06_repro.sh
tools/repro/test_v06_perf.sh
```

Final uninstrumented artifacts:

| Role | SHA256 | Size |
| --- | --- | ---: |
| Modern | `1545483fa3d0b1c1dd45909e25805b294e4b8a75f1adb2220fc15dd421a6a25a` | 739,328 B |
| Improved | `744fe2978d3faed507c1f1dba3fa50b2b1fef65f4374c3eb2ef3a8ddf9268269` | 898,048 B |

Each row was produced identically by two clean builds.

## Instrumented Workload

Run the complete development loop with:

```sh
REPEATS=3 DURATION=12 tools/repro/test_v06_inrom.sh
```

The historical benchmark rebuilds and verifies the exact public hash before
installing a source-built overlay. The overlay bypasses only the release splash,
branches after the original `setupGui`, and calls audited 2008 functions by
address. `instrument_exact_arm9.py` refuses an ARM9 payload or hook bytes that do
not match the verified release.

All three instrumented ROMs then perform the same application-level workload:

- Dispatch 225 down/move/up samples through the application's touch state machine.
- Create exactly 27 objects: platforms, boxes, circles, freehand polygons, and a pin.
- Reproduce the one-frame pen debounce, canvas bounds, GUI routing, scroll offsets,
  and pen-up behavior.
- Execute 600 real Box2D hit tests.
- Drag a body while running 240 physics steps.
- Draw 240 complete uLibrary canvas frames.
- Count visible objects and textured line quads outside the timed regions.
- Hash behavior and topology, calibrate timer-read cost, and measure heap growth.

The harness requires every metric exactly once per repetition, expected sample
counts, timeout status 124 from the deliberate post-test idle loop, stable timer
totals, stable checksums, and a matching ordered shape/type topology checksum.
Historical and improved fixed-point initial position sums must agree within one
pixel; the float baseline is bounded to one pixel per created object.

## Final Three-Way Result

Final interpreter-mode run: `.codex-artifacts/benchmarks/inrom-three-way-final`.
Every value below was identical in all three repetitions.

| Instrumented role | SHA256 | Size |
| --- | --- | ---: |
| Historical overlay | `8871cfc7782b2c95763d1346cb667de01c0ee1463c8bf464efc9136d87f6c307` | 3,215,936 B |
| Modern | `4aacea4e93a46fda4f3b693653e95900101f09a6e24d08af8c9b2719d46aef65` | 705,536 B |
| Improved | `81a9c2249788fd12012c14255745e1eaa2bd10e6d49d3769a412c33920160c59` | 867,328 B |

| Metric (mean DS ticks) | 2008 exact | Modern | Improved | Improved vs 2008 | Improved vs modern |
| --- | ---: | ---: | ---: | ---: | ---: |
| Touch create + drag | 10,068 | 15,468 | 13,445 | +33.54% | -13.08% |
| Hit test | 3,456 | 3,358 | 1,877 | -45.69% | -44.10% |
| Physics step | 606,516 | 613,252 | 544,593 | -10.21% | -11.20% |
| Canvas render | 99,018 | 302,842 | 120,482 | +21.68% | -60.22% |
| Full frame | 706,356 | 916,690 | 665,659 | -5.76% | -27.38% |
| Hit-test heap delta | 14,400 B | 14,400 B | 0 B | fixed | fixed |

The improved ROM rendered 22,488 line quads versus 22,183 in the historical run.
The 2008 renderer remains faster per quad and historical touch creation remains
faster; those regressions are retained rather than averaged away. The improved
whole frame is faster because physics and hit testing more than recover the
remaining renderer gap.

Acceptance assertions:

```text
bench-historical: deterministic complete touch/physics/render workload
bench-improved: deterministic complete touch/physics/render workload
bench-modern: deterministic complete touch/physics/render workload
all builds created an identical 27-object scene through touch dispatch
improved build removed the reproduced hit-test leak
improved build beat modern in every primary timed workload
improved build beat historical hit-test, physics, and full-frame totals
```

## Fixes And Selection

The improved build contains:

- Stack allocation for the hit-test `b2AABB`, removing 14,400 bytes of measured
  growth per 600-query workload.
- Correct `free` for `calloc`-allocated load tables.
- Removal of `fclose(NULL)` on new-file save.
- Bounded and terminated sample/caption strings.
- A six-byte stack number buffer instead of a four-byte heap buffer that could
  receive six bytes.
- A corrected aligned-allocation check.
- Correct uLibrary quad tint writes and historical vertex argument order.
- Fixed-point Box2D in ARM mode with GCC `-O3`.
- One reciprocal per line normal instead of two serialized DS hardware divides.
- One crayon texture bind per canvas.
- Cached polygon rotation/origin and first transformed vertex per draw, moving
  invariant work out of every vertex calculation.
- A direct historical 512-angle sine lookup reconstructed from the r21 table.

Rejected by in-ROM measurement:

- Fixed-point Thumb/O2: slower physics.
- Float ARM/O3: slower frame total.
- Mixed ARM/Thumb canvas: frame total increased to 727,852 ticks.
- Whole-program LTO: physics increased to 547,028 and frame total to 730,641 ticks.

## Real Hardware

Each benchmark ROM writes a separate file when DLDI/FAT is available:

```text
ppbench-historical.csv
ppbench-modern.csv
ppbench-improved.csv
```

Use these ROMs:

```text
.codex-artifacts/build/bench-historical/pocketphysics-bench-historical.nds
.codex-artifacts/build/bench-modern/pocketphysics-v0.6-blocksds.nds
.codex-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds
```

Run each ROM from the same flashcart and hardware, then collect the three CSVs.
The timer values are hardware bus-clock ticks. Do not use launch time, emulator
wall time, or time spent in the deliberate final idle loop as performance data.

The automated final numbers above are DeSmuME interpreter results. They prove
deterministic ARM instruction/register behavior and catch application regressions,
but they are not presented as a substitute for a collected physical-DS run.

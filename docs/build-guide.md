# Build Guide

This guide describes the current three source-built specimens. Use
[Reproducibility](reproducibility.md) for input locks, payload identities,
and acceptance gates. Earlier result directories are immutable experiment
checkpoints, not alternative names for the selected release.

## Requirements

Builds require full Git history, Docker with `linux/amd64` support, Python 3.11
or later, `curl`, `unzip`, and a host GCC/Clang with AddressSanitizer support
for regression tests. Target SDKs and tools are downloaded and hash-verified.

```sh
git clone https://github.com/lpla/pocketphysics.git
cd pocketphysics
```

## Historical 2008 Reconstruction

```sh
tools/repro/build_v06_exact.sh
tools/repro/test_v06_exact.sh
```

Single-build output: `research-artifacts/build/v06-exact/pocketphysics.nds`.
It is 894,016 bytes, with SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
The test creates two independent trees and compares complete ROMs, processor
payloads, ELF files, and executable-provenance reports.

The application starts from v0.6 revision `e9b621e`, with missing source and
assets supplied by the 2010 source-tree repair `3e538e0` and the audited
[reconstruction corpus](../research/reconstruction/v06/README.md). Historical
devkitARM r20/r21 tools compile the application, dependencies, runtime, and
startup. The ordinary ARM9 link matches the release without payload replacement.
Fixed-point DS hardware math and historical bugs are preserved deliberately.
The release ROM is an independent validation oracle, not a source-build input.

All linked executable implementations have C/C++ or genuine low-level assembly
source. The [byte inventory](executable-source-coverage.md) attributes 99.99%
to source-built implementations and 80 bytes to linker output. Unused
archive-only zlib `deflate` recovery remains open; it contributes no ROM code.
Byte identity does not establish the author's exact original expressions.

## Modern Compatibility Port

```sh
tools/repro/build_v06_blocksds.sh
tools/repro/test_v06_repro.sh
```

Single-build output:
`research-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds`.
It is 739,328 bytes, with SHA-256
`93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06`.

The default profile is `repro`: v0.6 plus compatibility transforms, BlocksDS
1.21.1, uLibrary 1.14, Box2D 2.0.1, TinyXML 2.6.2, libpng 1.6.58, zlib 1.3.2,
and GCC/binutils/runtime packages bound by the
[image digest and package locks](provenance.md). It uses Thumb/O3 and
floating-point Box2D. "Modern" names this frozen research baseline; it does not
mean every dependency is the latest available version.

This port is neither hash-identical to 2008 nor behavior-identical to its
fixed-point numerical path. Known bugs retained by this role serve as controls.
Its performance difference from the historical role cannot be attributed to
dependency updates alone. A matching-numeric-mode modernization control is
listed in the [research frontier](research-frontier.md).

## Selected Improved Port

```sh
tools/repro/build_v06_perf.sh
tools/repro/test_v06_perf.sh
```

Single-build output:
`research-artifacts/build/v06-blocksds-perf/pocketphysics-v0.6-blocksds.nds`.
It is 814,080 bytes, with SHA-256
`bdb7f37880b89e158230c070fef13ed58c53c55563c0710d1484d4bdd44b478d`.

The `perf` profile uses the same modern stack, ARM/O3/LTO, fixed-point DS
hardware math, runtime fixes, polygon validation, the fixed-length estimate
and half-limit velocity gate, batched rendering, physics ITCM, and
`Canvas::drawLine` ITCM. The wider velocity gate and `World::getThingsAt` ITCM
candidate remain experimental and are not enabled. See the
[optimization study](optimization-study.md) for attribution, decisions, and
measured costs. Implemented fixes do not imply exhaustive workflow validation.

## Comparison and Validation

```sh
REPEATS=3 tools/repro/test_v06_inrom.sh
REPEATS=3 tools/repro/test_polygon_api_inrom.sh
tools/repro/test_all.sh
```

The first workflow creates separate instrumented specimens for all three roles
and measures the touch/physics/canvas sequence with ARM9 timers in melonDS 1.1.
Their hashes differ from the uninstrumented hashes above; each dataset's
`roms.txt` identifies them. The second adds separate polygon API regression
cases. The full suite includes independent builds, negative controls, source
audits, configuration isolation, and benchmark gates. CI uses one repetition
per specimen as a smoke test; published comparisons use three.

The [result index](../research/results/README.md) distinguishes selected,
checkpoint, candidate, and supplemental datasets. Frame timing is specific to
the [direct integration harness](benchmarking.md#runtime-boundary), not the
normal full-GUI VBlank/foreground/audio loop or physical stylus latency.
Physical DS validation, broader sketches, lifecycle/storage tests, and complete
trajectory comparisons remain open.

Canonical changes belong in the tracked reconstruction corpus or the modern
[application](../tools/repro/patch_v06_source.py),
[Box2D](../tools/repro/patch_box2d_source.py), and
[geometry](../tools/repro/transform_convex_decomposition.py) transforms.
Output source trees are regenerated. New profiles need explicit identities
and independent rebuild/workload checks before selection.

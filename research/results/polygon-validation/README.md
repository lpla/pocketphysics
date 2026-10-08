# Polygon Validation Experiment

## Specimens

Clean source revision `0a9d83eabe25b03c264b5a6f95aaa40589c58a05` provides the
legacy control, guarded candidate, shared host tests, and independent ARM9 API
test profile. Two fresh candidate builds produce identical complete ELF files
and ROMs:

```text
selected control ROM  e9ba5b69b16e2ed4fb4893f29532adf1aabf5be804517089aefd821f4aa772ca
guarded ROM           157ca14fb895a2dfc93ae2548482db718823dbf77b374814bcae8f7d697fd292
guarded complete ELF  37616588dd12c8ec5c49f6866cd511472d850aa6ef0b5c6df260f78f95719503
ARM9 API-test ROM     85c0ea570f866fb95dbc6c3c6db0e56c5adbc1abc38bcb55dbbf778fa641b1bf
```

The control retains its preceding published ROM identity. The
[primary comparison](melonds/) contains six runs and 138 measurement rows;
the [separate API comparison](api-validation/) contains six runs and 144 rows.
All repetitions pass recorded scene, hit-test, final-state, allocation,
render-work, and tolerant cadence assertions with zero timing spread.
Raw logs and clean-checkout metadata are retained in both datasets.

The source-patch suite passes 96 tests across 16 suites. The
[study](../../../docs/polygon-validation-study.md) documents the defect,
implementation, negative gates, and limits of the tested domain.

## Correctness Evidence

The [macOS host record](host-macos/) uses Apple Clang 21.0.0; the
[Linux host record](host-linux/) uses GCC 12.2.0. Both scalar modes independently
reproduce the empty-polygon failure and zero-area self-intersection failure in
legacy controls. Every guarded host executable completes sixteen shared cases
with zero failures and checksum `722c5bcb`. Linux enables leak checking; the
macOS sanitizer configuration does not support it.

The ARM9 test specimen independently completes the same sixteen cases under
DS hardware-math emulation, with zero failures and the same checksum in each
repetition. These additional tests run after the standard timed workload, in a
different binary. Its timing rows must not replace the primary comparison.
The host fixed-point path is memory-sanitized, not a full integer undefined-
behavior audit. API failures do not establish ordinary-stylus crash reachability
or a physical Nintendo DS crash.

## Timing and Decision

Mean in-ROM ARM9 ticks per operation:

| Metric | Preceding selected control | Guarded candidate |
| --- | ---: | ---: |
| Touch processing | 6,239 | 6,223 |
| Hit test | 1,594 | 1,629 |
| Physics | 111,032 | 110,987 |
| Complete frame | 556,860 | 556,655 |

Hit testing increases by 35 ticks, 2.20%, approximately 1.04 microseconds at the
recorded ARM9 timer rate. The other differences are tiny and sensitive to code
placement and synchronization. They do not establish a general speedup, nor
are they omitted to make the candidate appear universally faster. Recorded
scene/render evidence is unchanged, heap growth is zero, and tolerant cadence
overruns remain zero.

The candidate supports a correctness-driven pre-hardware promotion with this
explicit hit-test cost, not a new performance-gain claim. Whole-application
degenerate-touch reachability, larger interaction workloads, and physical
Nintendo DS validation remain open.

## Reproduction

```sh
git checkout 0a9d83eabe25b03c264b5a6f95aaa40589c58a05
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_polygon_guard.sh
```

This recreates both candidate builds, host negative controls, the primary
comparison, and the independently instrumented ARM9 case run. The Linux host
matrix can also be executed inside the historical build container produced by
the exact build, using the same Python runner and candidate dependency tree.

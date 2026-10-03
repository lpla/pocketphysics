# Triangle C++ Source-Recovery Validation

## Specimen

Clean source revision `06d1f4ab619afe377e217ebcebde06e89c43a1ed` builds the
entire historical `b2Triangle` unit from C++, including its static initializer.
It follows the complete libnds and TinyXML source recoveries. The
[recovery method](../../../docs/triangle-source-recovery.md) describes the
source-level boundary comparisons and compiler-generated section ordering.

Two independent clean builds reproduced the release payloads and ROM, with
byte-identical ELF files and provenance reports. The [hash record](exact-hashes.txt)
contains the intermediate ARM9 link, final payloads, and ROM identities.
The [provenance report](executable-provenance.json) attributes 612,432 of
675,580 executable-section bytes to source-built implementations, 63,068 to
residual reconstruction, and 80 to linker-generated padding/stubs. The source
categories include original low-level assembly; this is not a C++-only or
research-effort percentage.

The independent [hosted development-loop test](https://github.com/lpla/pocketphysics/actions/runs/37114976959)
passed the full workflow and its melonDS comparison.

## Experiment

All three instrumented specimens were freshly built from the clean revision
and run three times in melonDS 1.1. The historical instrumented specimen uses
the source-built exact payload, not an extracted release binary. The
[dataset](melonds/) retains 207 measurement rows, assertions, ROM hashes,
source/emulator metadata, summaries, and [raw output](melonds/logs/).

Every run executes 225 touch events, creates the same 27-object scene, performs
600 hit tests, and advances 240 physics/render frames. The counters come from
the ARM9 timer protocol, not emulator host duration. All roles have zero timing
spread across the three repeats.

`results.csv` and `roms.txt` are byte-identical to the previous
[runtime/libpng experiment](../runtime-source-recovery/melonds/). This validates
unchanged benchmark binaries and measurements after further source recovery;
it is not a new optimization result. The historical and modern roles retain
the reproduced hit-test leak, while the improved role passes the recorded
leak, timing, and cadence checks.

## Reproduction

```sh
git checkout 06d1f4ab619afe377e217ebcebde06e89c43a1ed
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/runtime-source-recovery/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
cmp research/results/runtime-source-recovery/melonds/roms.txt \
    research-artifacts/benchmarks/inrom-test/melonds/roms.txt
```

These are emulator-only results. They do not establish physical Nintendo DS
performance, arbitrary-sketch correctness, complete physics equivalence across
roles, or completed high-level source recovery. The remaining boundary and
experimental limits are documented in the [source inventory](../../../docs/executable-source-coverage.md)
and [benchmark protocol](../../../docs/benchmarking.md).

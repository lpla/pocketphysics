# Runtime and libpng Source-Recovery Validation

## Specimen and Build Identity

This dataset validates clean source revision
`55db9bca852419b04d04a116898ed012ac03130d`. At this revision, all 15 libpng
members and 11 of 12 zlib members compile from C. Both processor links also use
source-built startup and target runtimes: 1,774 archive-member instances and
12 standalone objects pass independent historical identity gates. The SDK's
precompiled target archives and objects are removed before those replacements
are installed.

Two clean historical builds passed every object and release-payload gate and
produced byte-identical ARM7/ARM9 ELF files and ROM payloads. The
[payload hash record](exact-hashes.txt) retains all four identities. The final
894,016-byte ROM remains SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
The [independent hosted workflow](https://github.com/lpla/pocketphysics/actions/runs/37072623252)
completed successfully, including the full development loop and melonDS smoke
comparison.

The [executable provenance report](executable-provenance.json) binds the counts
to ELF/map hashes and disjoint linked address ranges. At this specimen,
588,200 of 675,580 executable-section bytes are source-compiled, 87,300 remain
residual reconstruction, and 80 are linker-generated. Later libnds source
recoveries are not retroactively credited to this specimen.

## Fresh Three-Build Experiment

All three instrumented ROMs were rebuilt from this clean revision and run
three times in melonDS 1.1. Each run executes the same 225-touch, 27-object,
600-hit-test, 240-frame workload. The [dataset](melonds/) contains the
207 normalized rows, summaries, assertions, source/emulator metadata, and ROM
identity manifest. [Raw per-run output](melonds/logs/) is retained as well.
The watchdog terminates the emulator process after collection; its host-side
duration is not a performance measurement.

Both `results.csv` and `roms.txt` are byte-identical to the
[earlier C-source recovery comparison](../c-source-recovery/melonds/).
This is empirical evidence of unchanged benchmark binaries and measurements,
not an optimization gain. Historical and modern specimens deliberately retain
the reproduced hit-test leak; their expected failure flags are not omitted.
The improved specimen passes the recorded leak and behavior checks and retains
its previously measured performance/cadence result.

```sh
git checkout 55db9bca852419b04d04a116898ed012ac03130d
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/c-source-recovery/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
cmp research/results/c-source-recovery/melonds/roms.txt \
    research-artifacts/benchmarks/inrom-test/melonds/roms.txt
```

No physical Nintendo DS measurements are included. The tests do not establish
arbitrary-sketch coverage, complete cross-role physics equivalence, or finished
high-level source recovery. See the [benchmark limits](../../../docs/benchmarking.md),
[runtime method](../../../docs/runtime-source-recovery.md), and
[remaining recovery boundary](../../../docs/c-source-recovery.md).

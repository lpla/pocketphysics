# Complete Archived Polygon Source Validation

## Specimen and Identity

Source revision `93e8894e2fbd0fec7f69fcdbb38d741b83be6a2a` compiles all
48 polygon/decomposition methods from the preserved March 10, 2008 forum
source, with the documented incoming-node pointer ABI adjustment. The
30,768-byte executable unit contains no residual polygon assembly, method
selection, or per-method compiler overrides. Triangle sources are unmodified
copies of the same archive. The
[recovery report](../../../docs/polygon-source-recovery.md) separates archival
provenance, the complete source delta, and compiled acceptance gates.

Two independent clean builds produced identical processor payloads, packaged
ROMs, intermediate ELF files, and provenance reports. The final ROM is the
894,016-byte public v0.6 release, SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
The [hash record](exact-hashes.txt),
[validation record](validation.json), and
[executable inventory](executable-provenance.json) preserve the acceptance
evidence. At this revision, source coverage is 659,996 of 675,580 executable
bytes, **97.69%**, including original low-level assembly. Its 15,504-byte
residual boundary is historical to this dataset, not the current master count.

The [hosted workflow](https://github.com/lpla/pocketphysics/actions/runs/37775633746)
completed successfully at this source revision.

## melonDS Experiment

All three instrumented roles were freshly built from the clean revision and
replayed three times in pinned melonDS 1.1 without JIT. The
[dataset](melonds/) contains 207 rows, ROM hashes, metadata, summaries,
acceptance statements, and [nine raw log sets](melonds/logs/). Each run
processes 225 touch events, creates 27 objects, performs 600 hit tests, and
advances 240 physics/render frames. Timing uses in-ROM ARM9 counters; the
12-second host watchdog is only a termination bound.

The results, summaries, and ROM identities match the preceding
[partial polygon-source dataset](../polygon-cpp-source/melonds/) byte for
byte. This confirms unchanged binaries and measured behavior, not a new
speedup. The historical and modern roles retain the reproduced 14,400-byte
hit-test leak as negative controls; the improved role records zero leak and
passes the documented processing/cadence comparison assertions.

## Reproduction and Limits

```sh
git checkout 93e8894e2fbd0fec7f69fcdbb38d741b83be6a2a
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/polygon-cpp-source/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
```

These measurements are emulator-only. They do not establish physical Nintendo
DS timing, arbitrary-sketch correctness, complete per-body cross-role physics
equivalence, or completion of high-level source reconstruction.

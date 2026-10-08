# Complete Archived Solver Source Validation

## Specimen

Source revision `15753a600ffc5a7f86fb33cf615b237c956252e3` replaces the
remaining contact velocity and island `Solve` transcriptions with unchanged
upstream SVN r131 C++ plus the preserved March 15, 2008 fixed-point patch.
No residual Box2D assembly, solver-specific linker modification, method
selection, or post-link solver replacement remains. The
[recovery report](../../../docs/contact-source-recovery.md) documents the
archival inputs and independent compiled acceptance gates.

Two independent clean builds produce identical processor payloads, packaged
ROMs, intermediate ELF files, and provenance reports. The final historical
ROM remains SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
The [hash record](exact-hashes.txt) and
[validation record](validation.json) preserve the exact-build gates.
The [inventory](executable-provenance.json) credits 668,600 of 675,580
executable bytes to source, **98.97%**, including original low-level assembly.
Its 6,900-byte residual boundary describes this specimen, not later revisions.

The [hosted workflow](https://github.com/lpla/pocketphysics/actions/runs/37779607398)
is bound to this source revision and provides its independent hosted status.

## melonDS Comparison

All three instrumented roles were freshly built from a clean checkout of the
revision above. The [dataset](melonds/) contains nine runs, 207 measurement
rows, metadata, ROM identities, summaries, acceptance statements, and
[raw logs](melonds/logs/). Every run processes 225 touch events, creates 27
objects, executes 600 hit tests, and advances 240 physics/render frames.
Timing comes from in-ROM ARM9 counters, not the host watchdog.

Results, summaries, and ROM identities are byte-identical to the preceding
[complete polygon-source dataset](../archived-polygon-source/melonds/).
Each role has zero spread across its three repetitions. The improved role
removes the 14,400-byte hit-test leak retained by both negative controls and
passes the processing/cadence comparison assertions. Source recovery preserves
the prior optimized binary; it does not add another speedup.

## Reproduction

```sh
git checkout 15753a600ffc5a7f86fb33cf615b237c956252e3
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/archived-polygon-source/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
```

The results remain emulator-only. They do not prove physical Nintendo DS
performance, arbitrary-sketch correctness, or complete per-body cross-role
physics equivalence. Individual historical/modern correctness flags are
retained as negative controls; comparison acceptance is not an assertion that
every metric on those specimens passed.

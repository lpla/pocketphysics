# Ordinary ARM9 Source-Link Validation

## Specimen

Source revision `28fe33d05a42ef6b2734029b745c2af49736a3ac` combines complete
font-unit recovery with declaration-only keyboard/FAT recovery. The ordinary
ARM9 link equals the released payload without post-link replacement. The
[recovery report](../../../docs/ordinary-arm9-source-recovery.md) documents
the source changes and complete normalized object gates.

Two independent clean builds reproduce identical payloads, ELF files, ROMs,
and provenance reports. The [hash record](exact-hashes.txt) and
[validation record](validation.json) preserve the acceptance gates. The
[inventory](executable-provenance.json) attributes 671,088 of 675,580 executable
bytes to source, **99.34%**, including original low-level assembly. Its
4,412-byte residual boundary describes this specimen, not later revisions.

The [hosted workflow](https://github.com/lpla/pocketphysics/actions/runs/37785323575)
is bound to this source revision and exposes its independent hosted status.

## melonDS Comparison

All three roles were freshly built from a clean checkout of the revision
above. The [dataset](melonds/) contains nine runs, 207 measurement rows,
metadata, ROM identities, summaries, assertions, and [raw logs](melonds/logs/).
Each run processes 225 touch events, creates 27 objects, executes 600 hit tests,
and advances 240 physics/render frames. Timing uses in-ROM ARM9 counters; the
host watchdog is not a performance measurement.

Results, summaries, and ROM identities are byte-identical to the preceding
[solver-source dataset](../archived-solver-source/melonds/). All three roles
have zero spread across their three repetitions. The improved role retains
the measured leak removal and processing/cadence improvements. Source recovery
preserves those binaries and does not add another speedup.

## Reproduction

```sh
git checkout 28fe33d05a42ef6b2734029b745c2af49736a3ac
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/archived-solver-source/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
```

The results remain emulator-only. They do not establish physical Nintendo DS
timing, arbitrary-sketch correctness, or complete per-body cross-role physics
equivalence. Historical/modern correctness flags remain negative controls;
comparison acceptance is not a claim that every metric on those roles passes.

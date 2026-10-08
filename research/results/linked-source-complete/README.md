# Linked Executable Source Validation

## Specimen

Source revision `5192b6c851186c122c896f4aa7b2b8eb7553d5bf` replaces the complete
uLibrary PNG loader and alpha converter with C. Every implementation linked
into the historical ROM now compiles from C/C++ or original upstream low-level
assembly. No linked executable transcription or post-link replacement remains.
The [PNG](../../../docs/png-loader-source-recovery.md) and
[alpha](../../../docs/alpha-source-recovery.md) reports document the complete
source changes, compiler controls, and normalized object identities.

Two independent clean builds reproduce identical payloads, ELF files, ROMs,
and provenance reports. The [hash record](exact-hashes.txt) and
[validation record](validation.json) preserve the acceptance gates. The
[inventory](executable-provenance.json) attributes 675,500 of 675,580 executable
bytes to source, **99.99%**, including original low-level assembly. The remaining
80 bytes are linker-generated. The archive-only zlib `deflate` transcription
contributes no executable bytes to this ROM and remains a separate recovery
target. Binary-constrained source identity does not establish the author's
original expression choices or complete semantic validation.

The [hosted workflow](https://github.com/lpla/pocketphysics/actions/runs/37825057412)
is bound to this source revision and exposes its independent hosted status.

## melonDS Comparison

All three roles were freshly built from a clean checkout of the revision
above. The [dataset](melonds/) contains nine runs, 207 measurement rows,
metadata, ROM identities, summaries, assertions, and [raw logs](melonds/logs/).
Each run processes 225 touch events, creates 27 objects, executes 600 hit tests,
and advances 240 physics/render frames. Timing uses in-ROM ARM9 counters; the
host watchdog is not a performance measurement.

Results, summaries, and ROM identities are byte-identical to the preceding
[ordinary ARM9 dataset](../ordinary-arm9-source/melonds/). All three roles
have zero spread across their three repetitions. The improved role retains
the measured leak removal and processing/cadence improvements. Source recovery
preserves these binaries and does not add another speedup.

## Reproduction

```sh
git checkout 5192b6c851186c122c896f4aa7b2b8eb7553d5bf
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/ordinary-arm9-source/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
```

The results remain emulator-only. They do not establish physical Nintendo DS
timing, arbitrary-sketch correctness, or complete per-body cross-role physics
equivalence. Historical/modern correctness flags remain negative controls;
comparison acceptance is not a claim that every metric on those roles passes.

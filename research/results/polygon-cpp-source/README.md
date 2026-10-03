# Polygon C++ Source-Recovery Validation

## Specimen

Source revision `a63e4e00b2a7071ffb2e43c54a8fbed9683dcb8d` removes the
polygon/decomposition whole-unit ARM9 replacement. Its reviewed relocatable
object contains 42 complete C++ methods totaling 12,676 executable-section
bytes and six explicitly residual assembly methods totaling 18,092 bytes.
The [recovery report](../../../docs/polygon-source-recovery.md) describes the
compiler configurations, declaration-scope reconstruction, relocated data,
method boundaries, and acceptance criteria.

Two independent clean builds reproduce the canonical ARM7 payload, ARM9
payload, and complete 2008 v0.6 ROM. Payloads, ELF files, intermediate ARM9
payloads, and executable-provenance reports are identical between builds.
The [hash record](exact-hashes.txt) contains all four payload/ROM identities;
the [validation record](validation.json) identifies the commands and local
test results. The compiled polygon source in each build also matches the
preserved source revision. The normalized polygon-object identity is
`65e45c5b25a4f1bffef04731b9a5400d399af7c2d1e24583964f826b7b57ad94`.

The [provenance report](executable-provenance.json) accounts for all 675,580
executable-section bytes: 641,904 source-built, 33,596 residual, and 80
linker-generated. Source-built coverage is 95.02%, including original
low-level assembly. This is not completed high-level source recovery, and
the mixed historical build still contains unresolved assembly and four
post-link code replacements.

The independent [hosted development-loop workflow](https://github.com/lpla/pocketphysics/actions/runs/37161471963)
is bound to this source revision. The local checks reported here are complete;
the linked workflow is the authoritative record of its hosted status.

## Experiment

All three instrumented specimens were freshly built from the clean revision
and run three times in melonDS 1.1 with the pinned non-JIT configuration.
The [dataset](melonds/) preserves 207 measurement rows, ROM identities,
summaries, acceptance statements, clean-tree metadata, and all nine sets of
[raw emulator logs](melonds/logs/).

Each run processes 225 touch events, creates a 27-object scene, executes 600
hit tests, and advances 240 physics/render frames. Timing comes from the
in-ROM ARM9 timers. The 12-second host watchdog is only a termination bound;
it is not used as a performance measurement. Each role has zero timing spread
across its three repetitions.

`results.csv`, `summary.csv`, and `roms.txt` match the preceding
[contact-solver/UI experiment](../solver-ui-source/melonds/) byte for byte.
This is confirmation of unchanged benchmark binaries and measured behavior,
not an additional optimization gain. Historical and modern specimens retain
the reproduced 14,400-byte hit-test allocation leak as negative controls; the
improved specimen retains zero leak, faster processing, and no tolerant
cadence overruns. The comparison acceptance statements do not imply that
every individual historical or modern metric passed its correctness flag.

## Reproduction

```sh
git checkout a63e4e00b2a7071ffb2e43c54a8fbed9683dcb8d
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/solver-ui-source/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
cmp research/results/solver-ui-source/melonds/summary.csv \
    research-artifacts/benchmarks/inrom-test/melonds/summary.csv
cmp research/results/solver-ui-source/melonds/roms.txt \
    research-artifacts/benchmarks/inrom-test/melonds/roms.txt
```

The instrumented historical specimen derives from the rebuilt release, not
an extracted executable. The [remaining byte inventory](../../../docs/executable-source-coverage.md)
lists all unresolved linked implementations. These results are emulator-only:
they do not prove physical Nintendo DS performance, arbitrary-sketch
correctness, or complete per-body physics equivalence across the three roles.

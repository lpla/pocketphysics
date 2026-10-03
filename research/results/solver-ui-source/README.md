# Contact Solver and UI Source-Recovery Validation

## Specimen

Source revision `633f69a47cacd7900e02db135b8923ea21921048` removes three further
whole-region ARM9 replacements. The contact-solver unit links 14,940 bytes
from C++, with only its 5,160-byte velocity method remaining in separately
attributed residual assembly. GUI setup and thumbnail rendering contribute
another 1,572 recovered application bytes. This revision also contains the
previous 284-byte shape-proxy recovery.

The [contact report](../../../docs/contact-source-recovery.md),
[UI report](../../../docs/ui-source-recovery.md), and
[shape report](../../../docs/shape-source-recovery.md) describe source changes,
object gates, and their release-constrained evidence boundaries.

Two independent clean builds reproduce the canonical release payloads and ROM,
with byte-identical ELF files and executable-provenance reports. The
[hash record](exact-hashes.txt) contains all four identities. The
[provenance report](executable-provenance.json) accounts for every one of the
675,580 executable-section bytes: 629,228 source-built, 46,272 residual, and
80 linker-generated. Source-built coverage is 93.14%, including original
low-level assembly. This is not a claim of completed C/C++ recovery.

The independent [hosted development-loop workflow](https://github.com/lpla/pocketphysics/actions/runs/37141306046)
records the CI run for the specimen revision. Local two-build and emulator
checks reported here are complete; the hosted run also completed successfully.

## Experiment

All three instrumented ROMs were freshly built from the clean revision and run
three times in melonDS 1.1 with the pinned non-JIT configuration. The
[dataset](melonds/) retains 207 measurement rows, ROM identities, summaries,
assertions, clean-tree metadata, and [raw emulator logs](melonds/logs/).

Each run executes 225 touch events, creates the same 27-object scene, performs
600 hit tests, and advances 240 physics/render frames. Timing is measured with
the in-ROM ARM9 timer protocol; the host watchdog interval is not a performance
measurement. All roles have zero timing spread across repeats.

`results.csv` and `roms.txt` are byte-identical to the preceding
[triangle experiment](../triangle-cpp-source/melonds/). This confirms unchanged
benchmark binaries, measured behavior, and timing after further source
recovery. It is not an additional optimization gain. The improved role retains
the recorded leak, timing, and cadence improvements over the comparison roles;
the historical and modern specimens retain the reproduced hit-test leak.

## Reproduction

```sh
git checkout 633f69a47cacd7900e02db135b8923ea21921048
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/triangle-cpp-source/melonds/results.csv \
    research-artifacts/benchmarks/inrom-test/melonds/results.csv
cmp research/results/triangle-cpp-source/melonds/roms.txt \
    research-artifacts/benchmarks/inrom-test/melonds/roms.txt
```

The locked upstream solver reference is comparison material, not a build input.
The [remaining byte inventory](../../../docs/executable-source-coverage.md)
lists every unresolved linked region. These emulator-only results do not prove
physical Nintendo DS performance, arbitrary-sketch correctness, complete
physics equivalence across roles, or complete high-level source recovery.

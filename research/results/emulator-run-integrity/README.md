# melonDS Run-Integrity Validation

## Specimens and Protocol

Both datasets record clean source revision
`40111e199be091bdb251a5e523c0b0d8defa13fb`. The intervention changes only
host-side run isolation, explicit startup configuration, snapshot verification,
and abnormal-exit rejection. It does not change target code or the pinned
melonDS 1.1 AppImage. Each dataset records its own container image ID; both
use configuration seed SHA-256
`262bd969d66f7e3deb085b61c67642133eed5d4f2f6c30d746ef4dce4e05ed23`.
See the [run-integrity protocol](../../../docs/emulator-run-integrity.md).

The [three-role dataset](three-role/) contains nine runs and 207 records.
The [API dataset](polygon-api/) contains six runs and 144 records: the selected
improved control and the separately instrumented polygon API specimen, each
repeated three times. Their ROM manifests identify the unchanged binaries;
instrumented hashes are not uninstrumented release hashes.

Both datasets retain normalized records, summaries, assertions, source/runtime
metadata, ROM manifests, raw stdout/stderr, extracted protocol records, and
every run's input/final TOML and exit status. `configuration-files.json` binds
the portable snapshots to hashes without host-specific manifest paths.
All input seeds match, and all final settings match except for each specimen's
expected recent-ROM path. Every run ends with watchdog status 124 after the
deliberate ROM idle loop; watchdog duration is not measured performance.

## Results

All timing totals repeat exactly. The
[baseline comparison](baseline-comparison.json) checks all fields in all 207
normalized three-role records against the
[preceding guarded dataset](../polygon-promotion/melonds/), not just mean times.
They are identical. Historical/modern leak controls remain present; improved
heap growth remains zero. The separate API specimen records 16 cases, zero
failures, and checksum `722c5bcb` in each repetition, with recorded world/render
evidence matching its selected control.

The [codec record](codec/validation.txt) uses the pinned emulator source's own
TOML implementation. It requires rejection of the staged untyped lookup and
successful serialization of the seeded and materialized controls.
[Compiler metadata](codec/compiler.txt) identifies the local diagnostic compiler.
The retained [failed CI stdout](rejected-ci/polygon-validation.1.stdout.log)
and [stderr](rejected-ci/polygon-validation.1.stderr.log) show the earlier boot
abort. The exact configuration from that failure was not captured; no definitive
field or thread-interleaving attribution is claimed.

The complete source-build, regression, and benchmark workflow subsequently
[passed on the protocol revision](https://github.com/lpla/pocketphysics/actions/runs/37842501473).
The preceding download-fallback revision also
[passed the complete workflow](https://github.com/lpla/pocketphysics/actions/runs/37840966068).
CI uses one repetition per specimen; this published local comparison uses three.

## Reproduction

```sh
git checkout 40111e199be091bdb251a5e523c0b0d8defa13fb
python3 tools/repro/test_emulator_runs.py
tools/repro/test_melonds_config.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
REPEATS=3 tools/repro/test_polygon_api_inrom.sh
```

Rebuilds are expected to retain the specimen ROM hashes and in-ROM results.
Container IDs are recorded per execution, not promised to be byte-identical.
The configuration checks apply to the versioned seed for this protocol, not to
earlier datasets that used a different runner.

This is host-run integrity evidence, not proof of full-application responsiveness,
exhaustive emulator race freedom, or physical Nintendo DS correctness. The
[direct-harness boundary](../../../docs/benchmarking.md#runtime-boundary) and
[remaining research](../../../docs/research-frontier.md) still apply.

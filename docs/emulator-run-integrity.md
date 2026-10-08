# Emulator Run Integrity

This protocol controls the host-side state surrounding the pinned melonDS 1.1
interpreter. It does not change the emulator core, ROM binaries, or in-ROM
timer interpretation.

## Observed Failure

The [October 8 CI run](https://github.com/lpla/pocketphysics/actions/runs/37837341062)
completed the three-role benchmark, then aborted during the separate polygon
API specimen's boot. Its stderr reported `toml::serialization_error`; no
benchmark record was emitted by that specimen. This is an emulator-configuration
failure, not evidence of a ROM crash or a slower physics implementation.

The previous runner reused a writable portable directory between repetitions
and ROMs. It did not retain that directory in the uploaded evidence, so the
precise failing configuration and field cannot be recovered from this run.
Fifteen subsequent launches using the previous runner configuration did not
reproduce the abort locally.

## Mechanism and Control

In the pinned source, the emulation thread's
[software-renderer setup](https://github.com/melonDS-emu/melonDS/blob/b86390e4428bf38ce4c1ce0e9ca446d6d25955e8/src/frontend/qt_sdl/EmuThread.cpp#L886)
reads `3D.Soft.Threaded`. The configuration
[getter and path resolver](https://github.com/melonDS-emu/melonDS/blob/b86390e4428bf38ce4c1ce0e9ca446d6d25955e8/src/frontend/qt_sdl/Config.cpp#L583)
materialize missing keys: a newly inserted value is initially untyped, then
assigned its default. The GUI thread
[saves the configuration after boot](https://github.com/melonDS-emu/melonDS/blob/b86390e4428bf38ce4c1ce0e9ca446d6d25955e8/src/frontend/qt_sdl/Window.cpp#L1161).
These configuration operations have no shared locking in the inspected paths.
Serialization of the intervening untyped state produces the observed exception.
This is a plausible failure mechanism, not a captured interleaving from CI.

[`test_melonds_config.sh`](../tools/repro/test_melonds_config.sh) downloads the
checksum-locked source revision corresponding to 1.1 and compiles a diagnostic
against its own TOML implementation. The test explicitly stages the missing-key
lookup before default assignment. Serialization must reject that untyped state
with the reported error, while both a preseeded lookup and the materialized
default must serialize successfully. This controlled sequential test does not
claim to reproduce thread scheduling or audit the whole emulator frontend.

## Run Isolation

The runner now creates a new portable-state directory for every ROM repetition.
The tracked [configuration seed](../tools/repro/emulators/melonds/melonDS.toml)
sets interpreter/direct boot, software rendering, and the observed startup
defaults explicitly, including the threaded-renderer default. It retains the
same effective settings as the earlier successful specimens.

Each run retains the input and final TOML files, their hashes, portable state,
stdout, stderr, extracted records, and process exit status. A configuration gate
requires byte-identical input seeds and equivalent final settings; only the
expected single recent-ROM path may change. Unexpected default materialization,
changed settings, missing snapshots, and abnormal exits fail the experiment.
The host watchdog's exit 124 is accepted only with complete benchmark evidence;
its duration remains unrelated to emulated performance. There is no automatic
retry that removes a failed attempt from the record.

## Verification

```sh
python3 tools/repro/test_emulator_runs.py
tools/repro/test_melonds_config.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
REPEATS=3 tools/repro/test_polygon_api_inrom.sh
```

The first suite checks independent state, seed preservation, settings snapshots,
and failure propagation without needing an emulator. The last two workflows
rebuild their specimens and apply configuration and in-ROM correctness gates.
Deterministic replay cannot establish that every host-side configuration race
has been removed. Physical DS readiness still requires the separate
[runtime-loop and hardware work](research-frontier.md).

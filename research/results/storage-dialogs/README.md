# Filename and Dialog Correction: Validation

Source checkpoint `f9bbb70b8583d00f1fd8a48505d7148bd66a2f41` adds the bounded
[dialog corrections](../../../docs/storage-dialog-study.md). The selected
uninstrumented ROM is 813056 bytes, SHA-256
`fca4d679d66d19476e7f22e005f5834282f8b054ad5d94771277d5e1e9b9b73e`.
Independent complete ROM and ELF builds match for the release and ordinary
runtime specimens; see [independent-builds.csv](independent-builds.csv).
The frozen modern ROM and its complete ELF retain their preceding identities.

## Method-Body Regression Cases

[Host results](host/results.json) retain 284 cases, generated C++ fixtures,
compiler diagnostics, and individual execution logs. The guarded cases cover
39 filename/overwrite combinations, all 231 valid length/cursor combinations
for typewriter backspace, and six directory enumeration/ownership cases.
Eight controls from source checkpoint `b9cede1` fail with their specified
sanitizer, ownership, or overwrite-workflow diagnostic.

The tests execute actual application method bodies. Save probes use temporary
POSIX files; GUI/audio drawing, XML serialization, and thumbnail decoding are
stubbed. Directory enumeration has a controlled ownership backend. This is
not complete FAT or GUI save/load/overwrite/cancel acceptance.

## Direct Integration Replay

The [12 direct runs](direct/assertions.txt) repeat their records exactly.
The newly source-built improved specimen retains the workload checksums and
zero hit-test heap growth. Historical, modern floating-point, and modern
fixed-point controls reuse their previously verified byte identities.

| Role | Hit-Test Mean | Physics Mean | Direct Sequence Mean | >1% Cadence Intervals |
| --- | ---: | ---: | ---: | ---: |
| Historical | 2805 | 278893 | 554829 | 0 |
| Modern floating-point | 3015 | 584579 | 904349 | 102 |
| Modern fixed-point DS control | 1941 | 197213 | 556031 | 0 |
| Improved with dialog correction | 1640 | 111140 | 556721 | 0 |

Times are in-ROM bus-counter ticks. The preceding length-corrected checkpoint
measured 1629, 110987, and 556655 ticks for the improved role. These small
changes accompany a different binary layout; the direct workload does not
execute storage dialogs and does not measure their latency. They are not
attributed to executing the corrected I/O paths or presented as a new speedup.
Numerical-mode, synchronization, and harness limits remain explicit.

## Normal Application Replay

[Three improved-runtime runs](runtime/assertions.txt) repeat every timing and
raw trace. Each performs 252 physics steps, consumes every VBlank input sample,
observes active mouse-joint dragging, and passes the GUI object-count and
play/pause/reset/deletion/replacement gates. The physics elapsed mean is 56288
ticks, VBlank handler mean 15216, and input-sample-age mean 30974. The fixed-point
length matrix and eight forced DIV/SQRT interruption cases pass.

The [body comparison](runtime/baseline-comparison.json) matches all 3528 recorded
body states against the preceding improved checkpoint, aligned by physics step
and thing index. This does not assert complete hidden-state or timing equality.
The existing cross-role step-26 difference remains a separate investigation.

![Final top-screen overview](runtime/runtime-improved.1.capture.png)

This ordinary sketch does not open the save or load dialogs. The host tests
and native ARM9 compilation provide their bounded acceptance evidence. A real
FAT-backed application workflow, XML/thumbnail validation, I/O failure behavior,
and physical console collection remain outstanding.

## Reproduce

```sh
git checkout f9bbb70
tools/repro/test_source_patches.sh
tools/repro/test_v06_perf.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
REPEATS=3 tools/repro/test_runtime_loop.sh
```

These commands rebuild the controls; the preserved comparison reuses the
identified frozen controls as disclosed above. Source, ROM identities, raw logs,
configuration snapshots, and exit statuses accompany each dataset. No physical
Nintendo DS measurement is included.

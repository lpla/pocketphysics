# Normal Application Loop Study

## Research Question

Does the selected port improve interaction processing when the application's
normal renderer and foreground loop are running, rather than when a harness
directly sequences those operations? Can a newer-toolchain control retain the
historical fixed-point DS hardware-math path without the selected optimizations?

The [direct integration study](benchmarking.md) remains an immutable, distinct
experiment. It must not be interpreted as full-application scheduling evidence.
The historical release reconstruction and the selected uninstrumented release
profiles are unchanged by this instrumentation.

## Specimens

| Profile | Numeric Path | Changes Relative to Modern Compatibility Port |
| --- | --- | --- |
| `bench-modern-fixed-ds` / `repro-fixed-ds` | Fixed 16.16, DS DIV/SQRT and trigonometric lookup | Only the scalar and hardware-math selection; Thumb/O3, compatibility behavior and known bugs retained |
| `runtime-modern` | IEEE floating-point | Normal-loop instrumentation of the floating-point compatibility control |
| `runtime-modern-fixed-ds` | Fixed 16.16, DS hardware math | Normal-loop instrumentation of the minimal fixed-point control |
| `runtime-improved` | Fixed 16.16, DS hardware math | Normal-loop instrumentation of the selected improved profile |
| `runtime-improved-irq-control` | Fixed 16.16, DS hardware math | Deliberately omits VBlank DIV/SQRT restoration; a negative control, never a release candidate |
| `runtime-improved-length-control` | Fixed 16.16, DS hardware math | Retains the faulty fixed-estimate length threshold; a negative control, never a release candidate |

The fixed-point control removes one major numerical confound. Comparing it
with the improved profile still combines compiler options, CPU mode, code
placement, correctness fixes, backports, and rendering changes. It is not an
isolated dependency or single-optimization experiment. A normal-loop historical
specimen is not yet implemented; the three runtime specimens are modern-port
controls and the selected port, not three complete historical/modern/improved
runtime comparisons.

## Workload

The [tracked script](../tools/repro/runtime_source/pp_runtime_script.h) presents
144 timed events over 954 VBlanks, followed by six release frames. Tool and
simulation changes use actual GUI coordinates. No direct canvas creation or
physics call is substituted for application processing. The sequence creates
a solid floor, six boxes, six circles, and a closed freehand polygon; starts
simulation; settles collisions; selects and rapidly drags a body through the
mouse joint; pauses and resumes; stops and resets; deletes an isolated circle;
and creates a replacement box. The parser requires the observed object-count
transitions 14 -> 13 -> 14 and nonzero mouse-joint steps.

Injection replaces the ARM9 key/touch acquisition boundary. It does not emulate
raw resistive-touch conversion or ARM7 IPC acquisition latency. Each ordinary
event is held for six VBlanks; the rapid drag changes target every three. The
normal foreground loop may process a sample more than once or miss a sample.
Those outcomes are recorded rather than hidden by an input queue. In-ROM audio
command generation and processing remain enabled; host audio output is disabled
by the pinned emulator configuration. The modern sound compatibility layer
issues libnds sample calls directly; `CommandProcessCommands` is a stub, not the
original ARM7 command queue. This study exercises that ported audio-call path,
not historical audio equivalence. Looping, note/panning, and sound semantics
still need a dedicated audit.

## Measurement

ARM9 TIMER0/1 count bus cycles. The hardware display period used here is
`6 * 355 * 263 = 560190` ticks, distinct from the older harness's nominal
60 Hz budget. `World::step` still integrates 1/20 second per invocation; this
study does not silently change simulation speed to the display period.

- `vblank_handler` includes the full application's renderer, input update,
  scrolling, background/projection work, and arithmetic-register save/restore.
- `vblank_interval` records observed IRQ-start spacing, including delay.
- `physics_elapsed` includes IRQ interruptions. `physics_foreground` subtracts
  the measured handler durations, but not unmeasured IRQ dispatch/return costs;
  it is not an exact CPU-instruction count.
- `sample_age` is presentation-to-foreground-touch-read age, not end-to-end
  physical stylus-to-photon latency. Per-VBlank consumption flags expose missed
  acquisition samples. Repeated reads are reported separately by input counts.
- `state_capture` quantifies trace capture outside the timed physics region.
  Its foreground work can still affect scheduling; the instrumented ROM is not
  timing-identical to an uninstrumented release.

Only acquisition and timer-accounting snapshots briefly mask interrupts.
Physics, normal input, and audio remain interruptible. Raw body transforms,
linear/angular velocities, awake flags, shape/type, and per-step contact/joint
counts are retained. Contact manifolds and joint parameters are not captured;
this is not complete physics-state equivalence. Different scheduling and
numerical modes prevent a blind cross-role equality assertion. Within each
binary, repeated melonDS timing records and raw traces must match exactly.

After timing ends, the actual VRAM-C display-capture buffer is box-filtered to
128x96 RGB555 and retained losslessly in the log. The analyzer reconstructs a
PNG and rejects blank, uniform, truncated, duplicated, or reordered records.
This final captured screen is not a video or proof of every displayed frame.
It is the top-screen world overview. A content gate additionally requires
the red floor and blue dynamic outlines in the scripted scene's projected
regions; the paper texture alone cannot satisfy it. This is a presence check,
not a full per-object or cross-role pixel-equivalence assertion.

## Arithmetic Ownership Control

After the measured replay, eight paired signed 64/64 division and unsigned
64-bit square-root cases span zero, negative operands, fractional quotients,
large operands, and the maximum square-root input. Expected values are checked
independently with host integer arithmetic. Each pair is started with a real
VBlank pending, then allowed to cross the complete application's arithmetic-
using renderer. The result is read after the handler returns. This separately
tests register ownership even when an optimized sketch has no naturally
overlapping physics step.

The deliberately broken restore profile must fail this matrix while passing
the remaining replay gates. A passing ordinary run alone is insufficient.
This bounded matrix does not audit all fixed-point overflow, shift, division-
by-zero, or physical-console behavior.

Protocol schema 2 also executes the [length-boundary matrix](length-threshold-study.md)
after timing. Fixed-point specimens must match the original Length/Normalize
reference over 19,662 component pairs, with checksum `7805b4b1` and zero
failures. Floating-point controls report zero cases and zero matrix checksums.
The deliberate legacy-threshold control must fail exactly 6,544 cases while
passing the other replay gates. Schema-1 baselines retain their own analyzer
revision and must not be silently interpreted as schema-2 records.

## Reproduce

```sh
tools/repro/test_modern_fixed_ds.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
REPEATS=3 tools/repro/test_runtime_loop.sh
```

The runtime driver builds each ordinary specimen twice and compares complete
ROMs and ELFs, executes three isolated melonDS runs per specimen, validates
configuration and complete traces, and executes both arithmetic and length
negative controls.
Outputs are under `research-artifacts/benchmarks/runtime-loop`: raw logs,
configuration pairs, identities, `results.csv`, `summary.csv`, `frames.csv`,
`bodies.csv`, `irqs.csv`, capture PNGs, and assertions. The emulator timeout is
only a completion bound, never a performance measurement. CI runs one replay
per specimen; published comparisons require three.

On a DLDI-capable flashcart, runtime ROMs additionally write
`pp-runtime-<profile>.log` to FAT after timing. The raw output can be preserved
for future console ingestion. Storage, firmware, and console behavior remain
unverified until physical collection; do not apply deterministic emulator
repeatability thresholds to physical timing.

## Remaining Acceptance Work

Historical full-loop instrumentation, raw ARM7 acquisition, aligned cross-role
trajectory comparisons, broader and malformed strokes, denser contact/joint
graphs, allocation-failure behavior, save/load/dialog lifetimes, and physical
input/display/storage validation remain open. The
[research frontier](research-frontier.md) separates these from the completed
source reconstruction. This protocol is a new coverage layer, not a declaration
that all bugs or optimization opportunities have been exhausted.

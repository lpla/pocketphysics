# In-ROM Benchmarking

## Measurement Boundary

Performance is measured inside the Nintendo DS program. ARM9 TIMER0 runs at the
33.513982 MHz bus clock and cascades into TIMER1, forming a 32-bit counter. A
high-low-high read loop prevents rollover tearing.

The host starts an emulator and kills the deliberate final idle loop after a
watchdog interval. That wall-clock interval is never converted into a
performance result.

## Application Workload

Every build executes the same scripted use of the actual application:

- 225 stylus down/move/up samples through the touch state machine.
- Exactly 27 created objects: platforms, boxes, circles, freehand polygons, and
  a pin.
- Real pen debounce, canvas routing, object/pen modes, and pen-up finalization.
- 600 `World::getThingsAt` hit tests.
- A dragged body during 240 Box2D simulation steps.
- 240 complete uLibrary render frames.
- Separate render begin, canvas, and render end phase timing.

This is intentionally not a synthetic Box2D loop. It includes the interaction
path that makes the software feel responsive: touch processing, object creation,
selection queries, simulation, and drawing.

## Correctness Gates

Timing rows are rejected unless all of these hold:

- Every required metric appears once per repetition.
- Sample counts are exactly 225, 600, and 240 as applicable.
- Every repetition creates and retains exactly 27 objects.
- Ordered shape/type topology checksums are stable.
- Final world checksums are stable within each build.
- Position sums remain within the documented numeric-mode tolerance.
- Visible-object and line-quad counts are nonzero.
- Timer-read calibration is plausible.
- The improved build has zero measured hit-test heap growth.
- Historical and modern builds reproduce the 14,400-byte leak workload.
- All repeated timing totals stay within the configured spread.

The final fixed-point candidates end with checksum `f49066a8` in both emulators.
The floating modern build intentionally follows a different numeric trajectory;
its behavioral bounds and topology still pass.

## Record Format

ROMs emit:

```text
PPBENCH,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass
```

Emulator runners add emulator identity, run index, ROM hash, ROM size, and
process status. [`analyze_inrom.py`](../tools/repro/analyze_inrom.py) produces a
summary and assertion log from that normalized CSV.

## Emulator Runtimes

### melonDS

- Official melonDS 1.1 x86_64 AppImage, checksum verified.
- FreeBIOS/direct boot; no proprietary firmware is required.
- JIT disabled.
- Frame limiter, sound, and DLDI disabled.
- Software GL and Xvfb in a pinned `linux/amd64` container.
- no$gba debug-register output captured as a byte stream because long messages
  can wrap in the emulated console.

### DeSmuME

- Debian DeSmuME `0.9.11-4.1` from the pinned package snapshot.
- Interpreter CPU mode.
- Sound and frame limiter disabled.
- Debug console plus an isolated CompactFlash directory.

The two emulator models are not averaged. Results are reported separately and
candidate direction is compared across them.

## Run The Matrix

```sh
REPEATS=3 \
DESMUME_DURATION=45 \
MELONDS_DURATION=12 \
tools/repro/test_v06_inrom.sh
```

For a single emulator:

```sh
EMULATOR=melonds REPEATS=3 DURATION=12 tools/repro/benchmark_inrom.sh
```

Local output goes to `.codex-artifacts/benchmarks`. Published, reviewable runs
are under [`research/results`](../research/results/).

## Interpretation

`mean_ticks` is the arithmetic mean per in-ROM sample. `frame_total` includes
touch work on drag frames, physics, and rendering. Phase totals are retained so
an aggregate win cannot conceal a regression.

Emulator cycle models are evidence, not physical hardware. A change is not
described as hardware-proven until collected on a Nintendo DS with the procedure
in [Real Hardware](real-hardware.md).

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
- The improved build records no frame more than 1% beyond one 60 Hz period and
  no interval longer than two periods.
- The modern build reproduces frame-cadence overruns.
- All repeated timing totals stay within the configured spread.

The selected fixed-point build ends with checksum `8c4d9050` in melonDS.
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

## Emulator Model

melonDS is the primary emulator for pre-hardware measurements. Its timing,
cadence, and correctness results determine whether an optimization advances to
physical-console testing. DeSmuME is retained as a supplemental compatibility
environment; disagreement from DeSmuME does not veto a melonDS improvement.

### melonDS

- Official melonDS 1.1 x86_64 AppImage, checksum verified.
- FreeBIOS/direct boot; no proprietary firmware is required.
- JIT disabled.
- Frame limiter, sound, and DLDI disabled.
- Software GL and Xvfb in a pinned `linux/amd64` container.
- no$gba debug-register output captured as a byte stream because long messages
  can wrap in the emulated console.

### Supplemental DeSmuME Runtime

- Debian DeSmuME `0.9.11-4.1` from the pinned package snapshot.
- Interpreter CPU mode.
- Sound and frame limiter disabled.
- Debug console plus an isolated CompactFlash directory.

Results from different emulators are never averaged.

## Run the Matrix

```sh
REPEATS=3 \
MELONDS_DURATION=12 \
tools/repro/test_v06_inrom.sh
```

For a single emulator:

```sh
EMULATOR=melonds REPEATS=3 DURATION=12 tools/repro/benchmark_inrom.sh
```

For a supplemental DeSmuME run:

```sh
EMULATORS=desmume REPEATS=3 tools/repro/test_v06_inrom.sh
```

To rebuild and measure every accepted and rejected optimization profile:

```sh
REPEATS=2 \
DURATION=12 \
MAX_TIMING_SPREAD_PERCENT=0 \
tools/repro/test_optimization_screening.sh
```

`DURATION` is only a host watchdog. Increase it on a slower computer without
changing the in-ROM measurements.

Generated runs are written to `research-artifacts/benchmarks`. Versioned result
sets are published under [`research/results`](../research/results/).

## Interpretation

`mean_ticks` is the arithmetic mean per in-ROM sample. `frame_total` includes
touch work on drag frames, physics, and rendering. The raw `over_budget` field
uses the exact `BUS_CLOCK / 60` threshold. Two additional in-ROM counters make
cadence interpretation explicit:

- `frame_over_1pct_count`: intervals more than 1% beyond one nominal period.
- `frame_over_2x_count`: intervals longer than two nominal periods.

The 1% counter separates a real cadence overrun from sub-percent variation at
the emulator's VBlank boundary without discarding the raw threshold count.

Render phase timing includes real graphics FIFO and display synchronization.
When physics becomes faster, drawing begins earlier and can wait longer for the
same VBlank; `render_frame` can therefore rise while the complete frame and
cadence improve. Render timing is retained as synchronization evidence, but it
is not treated as an isolated CPU benchmark. Candidate acceptance uses melonDS
touch, hit testing, physics, complete-frame time, and cadence together.

melonDS cycle measurements are pre-hardware evidence, not a physical-console
result. A change is not described as hardware-proven until collected on a
Nintendo DS with the procedure in [Real Hardware](real-hardware.md).

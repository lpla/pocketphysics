# Optimization Attribution Screen

This dataset was generated from source revision
`8173803a4ffe5b640267417105a75ddc186b22ff`. Thirteen ROM profiles execute the
complete application workload twice. All profiles pass the behavioral gates,
retain stable per-profile checksums, and have zero timing spread between
repetitions.

- [Primary melonDS 1.1 records](melonds/)
- [Supplemental DeSmuME 0.9.11 records](desmume/)

The values below are mean ARM9 timer ticks per in-ROM sample. Frame totals
include display synchronization; classification therefore considers touch,
hit testing, physics, frame totals, cadence, and correctness together.

| Profile | Touch | Hit test | Physics | Frame | Classification |
| --- | ---: | ---: | ---: | ---: | --- |
| Software-math control | 9,210 | 1,381 | 417,160 | 601,278 | Attribution control |
| DS math ARM/LTO | 6,611 | 1,579 | 130,192 | 556,519 | Corrected baseline |
| DS math ARM/LTO/fast-math | 6,529 | 1,577 | 130,903 | 556,651 | Pending melonDS-only reassessment |
| DS math Thumb/LTO/fast-math | 7,086 | 1,664 | 233,930 | 557,657 | Pending melonDS-only reassessment |
| DS math Thumb/no-LTO/fast-math | 7,117 | 1,778 | 236,696 | 556,607 | Pending melonDS-only reassessment |
| Canvas ARM/O2 | 6,610 | 1,524 | 130,353 | 556,573 | Pending melonDS-only reassessment |
| Canvas Thumb/O2 | 6,663 | 1,524 | 130,400 | 556,144 | Pending melonDS-only reassessment |
| Reciprocal cache | 6,614 | 1,579 | 130,605 | 556,411 | Pending melonDS-only reassessment |
| Fixed length estimate | 6,232 | 1,586 | 118,992 | 556,431 | Accepted component |
| Velocity gate | 6,603 | 1,587 | 126,903 | 556,182 | Accepted component |
| Both Box2D backports | 6,234 | 1,585 | 118,066 | 556,316 | Accepted composition |
| Physics-only ITCM | 6,588 | 1,622 | 122,811 | 556,345 | Accepted component |
| Backports plus physics ITCM | 6,246 | 1,593 | 111,042 | 556,033 | Current selected profile |

`summary.csv` records every metric and embedded build label. `results.csv`
contains all 598 normalized per-run metric rows. `roms.txt` binds each profile
to its ROM SHA-256 and byte size, allowing binary identity verification without
storing ROM files in the dataset.

Reproduce the primary screen with the pinned source, toolchain, dependencies,
and melonDS runtime:

```sh
REPEATS=2 \
DURATION=12 \
MAX_TIMING_SPREAD_PERCENT=0 \
tools/repro/test_optimization_screening.sh
```

The host duration is a watchdog and can be increased on slower systems. Timing
values always come from the cascaded Nintendo DS timers inside the ROM.

DeSmuME records are retained as supplemental emulator data and do not determine
candidate acceptance.

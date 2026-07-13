# Optimization Study

## Experimental Policy

melonDS is the primary emulator for optimization work before physical Nintendo
DS measurements are available. A candidate advances when it passes behavioral
and allocation gates and improves the relevant melonDS application workload.
DeSmuME remains available for compatibility investigation but cannot veto a
melonDS-positive result.

All timings in this document are generated inside the ROM with the cascaded
ARM9 timer. Host execution duration is not a performance metric.

## Runtime Corrections

The improved profile includes source-visible correctness changes that are
required before performance is considered:

- Stack allocation for the hit-test `b2AABB`, removing 14,400 bytes of heap
  growth per 600-query workload.
- Matching `free` for `calloc`-allocated load tables.
- No `fclose(NULL)` when creating a new save.
- Bounded and terminated sample and caption strings.
- A correctly sized number-entry buffer.
- Correct aligned-allocation precedence and null handling.
- An unsized declaration for the 1,536-entry linear frequency-table object,
  removing an incompatible LTO type contract without changing its lookup space.
- One hardware division per line normal, one texture bind per canvas frame,
  cached polygon transforms, direct trig lookup, and corrected uLibrary calls.

The benchmark rejects a timing result unless topology, sample counts, workload
checksums, final state bounds, and allocation assertions pass.

## Restored Nintendo DS Math Path

The 2008 ARM9 Makefile compiled Box2D with both
`TARGET_FLOAT32_IS_FIXED` and `TARGET_IS_NDS`. Restoring only the first macro
selects software 64-bit division and square root instead of the Nintendo DS math
unit and omits the historical trigonometric-table path.

The compatibility layer supplies audited register aliases and the shared
quarter-wave trig table, then enables `TARGET_IS_NDS` in every translation unit
that can instantiate inline `Fixed` operators. This also prevents an ODR
mismatch between application and Box2D code.

Two-repeat melonDS attribution, mean ARM9 ticks:

| Profile | Touch | Hit test | Physics | Render sync | Frame | Final checksum |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| Software-math ARM/LTO control | 9,210 | 1,381 | 417,160 | 183,996 | 601,278 | `f49066a8` |
| DS math ARM/LTO | 6,611 | 1,579 | 130,192 | 426,180 | 556,519 | `8c4d9050` |
| DS math ARM/LTO/fast-math | 6,529 | 1,577 | 130,903 | 425,600 | 556,651 | `8c4d9050` |
| DS math Thumb/LTO/fast-math | 7,086 | 1,664 | 233,930 | 323,560 | 557,657 | `8c4d9050` |
| DS math Thumb/no-LTO/fast-math | 7,117 | 1,778 | 236,696 | 319,748 | 556,607 | `8c4d9050` |

Restoring the DS-specific path reduces physics time by 68.8% relative to the
software-math control and removes its tolerant cadence overruns. The checksum
change is expected because the corrected build executes the historical
fixed-point operators; checksums are exact across repetitions.

The melonDS-only reassessment does not select `-ffast-math`: touch improves by
1.24%, but physics regresses by 0.55% and complete-frame time by 0.02%. Both
Thumb profiles regress touch, hit testing, physics, and complete-frame time
relative to ARM/LTO, so the ARM/LTO profile remains the compiler baseline.

Render timing includes graphics FIFO and display synchronization. Faster
physics reaches that wait earlier, moving ticks from physics into drawing. The
complete frame and cadence counters are therefore interpreted with the phase
measurements rather than treating render wait as isolated CPU work.

## Later Box2D Backports

Later Box2D history contains broad architectural performance work that cannot
be applied to 2.0.1 as an isolated patch:

- The 2011 [cache-friendly solver change](https://github.com/erincatto/box2d/commit/33d649c)
  changes solver, body, joint, and memory representations across 52 files.
- The [dynamic-tree insertion overhaul](https://github.com/erincatto/box2d/commit/ad87ea0)
  targets a broad phase absent from Pocket Physics' 2.0.1 sweep-and-prune
  implementation.

Two conservative changes were isolated from later practice:

- Keep the fixed-point vector-length estimate in `float32` rather than
  converting through software float.
- Skip vector-length calculation when both velocity components are at most half
  the limit, where the original clamp cannot trigger.

## Component Attribution

The complete machine-readable screen is published under
[`research/results/optimization-screening`](../research/results/optimization-screening/).
All rows below have final checksum `8c4d9050`, zero hit-test heap growth, and
zero timing spread.

| Profile | Touch | Hit test | Physics | Render sync | Frame |
| --- | ---: | ---: | ---: | ---: | ---: |
| DS-math baseline | 6,611 | 1,579 | 130,192 | 426,180 | 556,519 |
| Fixed-estimate backport | 6,232 | 1,586 | 118,992 | 437,292 | 556,431 |
| Velocity-gate backport | 6,603 | 1,587 | 126,903 | 429,133 | 556,182 |
| Both Box2D backports | 6,234 | 1,585 | 118,066 | 438,103 | 556,316 |
| Physics-only ITCM | 6,588 | 1,622 | 122,811 | 433,390 | 556,345 |
| Backports plus physics ITCM | 6,246 | 1,593 | 111,042 | 444,844 | 556,033 |
| Backports plus render ITCM | 6,241 | 1,641 | 118,122 | 437,680 | 555,948 |
| Backports plus broad ITCM | 6,225 | 1,614 | 111,223 | 444,867 | 556,235 |
| Physics plus `Canvas::draw` ITCM | 6,249 | 1,614 | 111,077 | 444,631 | 555,854 |
| Physics plus `Canvas::drawLine` ITCM | 6,233 | 1,593 | 111,038 | 444,764 | 555,947 |

Against the corrected baseline, the fixed-estimate backport reduces physics by
8.60%, the velocity gate by 2.53%, both backports by 9.31%, and physics-only
ITCM by 5.67%. The selected backport, physics-ITCM, and line-ITCM composition
reduces physics by 14.71% and touch processing by 5.72%. Complete-frame time is
synchronized near one 60 Hz period and improves by 0.10%.

The uninstrumented ITCM section is 6,640 bytes and the instrumented specimen is
12,344 bytes, both below the ARM9's 32 KiB ITCM capacity.

## MelonDS Reassessment

The remaining compiler and renderer candidates were rerun under the same
melonDS-only decision rule:

| Candidate | Touch | Hit test | Physics | Frame | Decision |
| --- | ---: | ---: | ---: | ---: | --- |
| Canvas ARM/O2 | 6,610 | 1,524 | 130,353 | 556,573 | Exclude: physics and frame regress |
| Canvas Thumb/O2 | 6,663 | 1,524 | 130,400 | 556,144 | Exclude: touch and physics regress |
| Reciprocal cache | 6,614 | 1,579 | 130,605 | 556,411 | Exclude: touch and physics regress |
| Backports plus render ITCM | 6,241 | 1,641 | 118,122 | 555,948 | Exclude: hit test and physics regress |
| Backports plus broad ITCM | 6,225 | 1,614 | 111,223 | 556,235 | Exclude: hit test, physics, and frame regress |
| Physics plus `Canvas::draw` ITCM | 6,249 | 1,614 | 111,077 | 555,854 | Exclude: touch, hit test, and physics regress |
| Physics plus `Canvas::drawLine` ITCM | 6,233 | 1,593 | 111,038 | 555,947 | Select: all decision metrics are non-regressive |

The selected line-only placement improves touch by 0.21%, physics by 0.004%,
and complete-frame time by 0.015% relative to backports plus physics ITCM while
leaving hit-test time unchanged. The gains are small but repeat exactly in
melonDS; physical hardware remains the final decision point. No candidate in
this table is rejected because of a DeSmuME result.

## Selection Rule

An optimization enters the pre-hardware selected profile only when:

1. Behavioral, topology, allocation, checksum, and cadence assertions pass.
2. Repeated in-ROM timer results are stable.
3. The affected melonDS workload improves by more than measurement noise
   without a material regression in touch response or complete-frame cadence.
4. Synchronization-shaped phase movement is disclosed rather than labeled as
   isolated renderer CPU cost.
5. The change is source-visible, attributable, and byte-reproducible.

Physical Nintendo DS evidence remains the final authority. Hardware results are
published as additional datasets and do not overwrite emulator records.

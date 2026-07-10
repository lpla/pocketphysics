# Optimization Study

## Selected Runtime Fixes

The improved profile contains source-visible fixes that are accepted before any
timing comparison:

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

Correctness is a performance gate. The improved build must remove the leak,
execute the exact workload, and preserve stable topology and state checksums
before its timing is considered.

## Restored DS Math Path

The 2008 ARM9 Makefile compiled Box2D with both `TARGET_FLOAT32_IS_FIXED` and
`TARGET_IS_NDS`. The initial modern fixed-point profile restored only the first
macro. As a result, Box2D used software 64-bit division and square root instead
of the Nintendo DS math unit, and it missed the historical trig-table path.
That omission was both a source-compatibility bug and a major performance bug.

Current libnds no longer exposes every 2008 identifier in the same form. The
compatibility layer now supplies audited register aliases and the exact shared
quarter-wave trig table, then enables `TARGET_IS_NDS` in every translation unit
that can instantiate the inline `Fixed` operators. This avoids an ODR mismatch
between application and Box2D code.

Two-repeat melonDS attribution, mean ARM9 ticks:

| Profile | Touch | Hit test | Physics | Render sync | Frame | Final checksum |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| Software-math ARM/LTO control | 9,230 | 1,349 | 421,183 | 182,425 | 603,732 | `f49066a8` |
| DS math ARM/LTO | 6,607 | 1,584 | 130,738 | 425,622 | 556,507 | `8c4d9050` |
| DS math ARM/LTO/fast-math | 6,527 | 1,582 | 130,706 | 425,716 | 556,568 | `8c4d9050` |
| DS math Thumb/LTO/fast-math | 7,024 | 1,655 | 223,168 | 334,394 | 557,729 | `8c4d9050` |
| DS math Thumb/no-LTO/fast-math | 7,128 | 1,777 | 237,103 | 319,312 | 556,578 | `8c4d9050` |

DeSmuME independently reduced physics from 540,048 ticks in the software-math
control to 223,327 in the ARM DS-math profile. ARM without `-ffast-math` had the
best cross-emulator direction and remains selected. The checksum change is
expected: the corrected build now executes the DS-specific fixed-point
operators. Checksums remain exact across repetitions and both emulators, while
the scripted input and initial topology are unchanged.

The render column includes graphics/display synchronization. Faster physics
reaches that wait earlier, shifting ticks from physics into drawing. The near
one-period complete frame is the user-visible result; the render increase is
not interpreted as extra renderer CPU work.

## Later Box2D Backports

Later Box2D history contains substantial performance work, but it is not a
drop-in patch for 2.0.1:

- The 2011 [cache-friendly solver change](https://github.com/erincatto/box2d/commit/33d649c)
  changes 52 files and solver/body/joint representations.
- The [dynamic-tree insertion overhaul](https://github.com/erincatto/box2d/commit/ad87ea0)
  targets a broad phase that does not exist in Pocket Physics' 2.0.1
  sweep-and-prune implementation.

Wholesale migration would combine API, numeric, memory, and algorithm changes.
Two conservative changes were isolated instead:

- Keep the fixed-point vector-length estimate in `float32` rather than
  converting through software float.
- Skip vector-length calculation when both velocity components are at most half
  the limit, where the original clamp is mathematically unable to trigger.

They were previously rejected against the accidental software-math baseline.
Revisiting them after the DS path was restored changed the result.

## Corrected Composition Screen

Two-repeat results for the corrected ARM/LTO baseline and the selected
components follow. All rows have identical `8c4d9050` final checksums and zero
hit-test heap growth.

| Emulator | Profile | Touch | Hit test | Physics | Render sync | Frame |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| melonDS | DS-math baseline | 6,607 | 1,584 | 130,738 | 425,622 | 556,507 |
| melonDS | Both Box2D backports | 6,244 | 1,626 | 118,012 | 438,054 | 556,213 |
| melonDS | Physics-only ITCM | 6,591 | 1,619 | 123,595 | 432,621 | 556,363 |
| melonDS | Backports plus physics ITCM | 6,237 | 1,608 | 111,159 | 444,583 | 555,889 |
| DeSmuME | DS-math baseline | 10,830 | 1,889 | 223,327 | 332,710 | 556,608 |
| DeSmuME | Both Box2D backports | 10,301 | 1,737 | 196,464 | 359,948 | 556,979 |
| DeSmuME | Physics-only ITCM | 10,990 | 1,787 | 201,446 | 354,627 | 556,655 |
| DeSmuME | Backports plus physics ITCM | 10,300 | 1,862 | 182,374 | 373,432 | 556,377 |

The composition cuts physics by 14.98% in melonDS and 18.34% in DeSmuME. Touch
processing improves by 5.60% and 4.89%. Complete-frame time is already pinned
near the 60 Hz synchronization floor and changes by less than 0.2%. The
uninstrumented ITCM section is 6,144 bytes; the larger instrumented specimen is
11,688 bytes. Both fit comfortably within the ARM9's 32 KiB ITCM.

The canonical `perf` and `bench-improved` profiles therefore enable DS hardware
math, both conservative Box2D changes, and physics-only ITCM together.

## Measured Rejections

- **`-ffast-math`:** no complete-frame gain and a DeSmuME physics regression.
- **Thumb profiles:** lower synchronized render intervals but substantially
  slower physics; complete-frame cadence did not improve.
- **Per-file ARM/O2 and Thumb/O2 canvas:** at most 0.1% frame movement with no
  useful phase gain after synchronization.
- **Exact reciprocal cache:** no meaningful complete-frame or render gain on
  the corrected baseline.
- **Canvas plus solver in ITCM:** earlier testing put long-call-heavy drawing in
  ITCM and regressed DeSmuME rendering. Only physics functions are selected.
- **Wholesale modern Box2D:** rejected as an unattributable architecture and
  numeric migration, not as a measured drop-in optimization.

All isolated profiles remain in `container_build_v06.sh` so a physical console
can retest them. Profiles that omit DS hardware math are retained as historical
attribution controls and are not release candidates.

## Selection Rule

The release profile accepts a change only when:

1. Behavioral, topology, allocation, checksum, and cadence assertions pass.
2. In-ROM timer repetitions are stable.
3. Touch, physics, and complete-frame direction agree across both emulators.
4. Synchronization-shaped phase changes are disclosed instead of mislabeled as
   isolated CPU regressions or wins.
5. The change remains source-visible and byte-reproducible.

Physical-hardware evidence may change the final ranking. It must be published
as a new result set rather than replacing emulator evidence.

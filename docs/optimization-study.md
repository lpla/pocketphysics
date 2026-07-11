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
| Software-math ARM/LTO control | 9,210 | 1,381 | 417,160 | 183,996 | 601,278 | `f49066a8` |
| DS math ARM/LTO | 6,611 | 1,579 | 130,192 | 426,180 | 556,519 | `8c4d9050` |
| DS math ARM/LTO/fast-math | 6,529 | 1,577 | 130,903 | 425,600 | 556,651 | `8c4d9050` |
| DS math Thumb/LTO/fast-math | 7,086 | 1,664 | 233,930 | 323,560 | 557,657 | `8c4d9050` |
| DS math Thumb/no-LTO/fast-math | 7,117 | 1,778 | 236,696 | 319,748 | 556,607 | `8c4d9050` |

DeSmuME independently reduced physics from 539,349 ticks in the software-math
control to 218,894 in the ARM DS-math profile. ARM without `-ffast-math` had the
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
hit-test heap growth. The complete machine-readable screening is published for
[melonDS](../research/results/optimization-screening/melonds/) and
[DeSmuME](../research/results/optimization-screening/desmume/).

| Emulator | Profile | Touch | Hit test | Physics | Render sync | Frame |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| melonDS | DS-math baseline | 6,611 | 1,579 | 130,192 | 426,180 | 556,519 |
| melonDS | Both Box2D backports | 6,234 | 1,585 | 118,066 | 438,103 | 556,316 |
| melonDS | Physics-only ITCM | 6,588 | 1,622 | 122,811 | 433,390 | 556,345 |
| melonDS | Backports plus physics ITCM | 6,246 | 1,593 | 111,042 | 444,844 | 556,033 |
| DeSmuME | DS-math baseline | 10,831 | 1,901 | 218,894 | 337,232 | 556,702 |
| DeSmuME | Both Box2D backports | 10,381 | 1,787 | 193,397 | 362,720 | 556,700 |
| DeSmuME | Physics-only ITCM | 10,982 | 1,821 | 201,829 | 354,163 | 556,589 |
| DeSmuME | Backports plus physics ITCM | 10,259 | 1,857 | 181,913 | 373,863 | 556,372 |

The fixed-estimate backport alone cuts physics by 8.60% in melonDS and 11.43%
in DeSmuME. The velocity gate cuts it by 2.53% and 1.49%, the combined
backports by 9.31% and 11.65%, and physics-only ITCM by 5.67% and 7.80%.
The selected composition cuts physics by 14.71% in melonDS and 16.89% in
DeSmuME. Touch processing improves by 5.52% and 5.28%. Complete-frame time is
already pinned near the 60 Hz synchronization floor and changes by less than
0.1%. The uninstrumented ITCM section is 6,144 bytes; the larger instrumented
specimen is 11,848 bytes. Both fit comfortably within the ARM9's 32 KiB ITCM.

The canonical `perf` and `bench-improved` profiles therefore enable DS hardware
math, both conservative Box2D changes, and physics-only ITCM together.

## Measured Rejections

- **`-ffast-math`:** no complete-frame gain and a DeSmuME physics regression.
- **Thumb profiles:** lower synchronized render intervals but substantially
  slower physics. DeSmuME records 9 tolerant cadence overruns with LTO and 13
  without LTO, versus zero for the ARM baseline and selected profile.
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

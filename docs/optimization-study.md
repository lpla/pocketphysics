# Optimization Study

## Baseline Fixes

The selected improved source profile already contains changes measured before
the dependency-backport revisit:

- Stack allocation for the hit-test `b2AABB`, removing 14,400 bytes of heap
  growth per 600-query workload.
- Matching `free` for `calloc`-allocated load tables.
- No `fclose(NULL)` when creating a new save.
- Bounded and terminated sample and caption strings.
- A correctly sized number-entry buffer.
- Correct aligned-allocation precedence and null handling.
- Fixed-point Box2D in ARM mode.
- One hardware division per line normal instead of two.
- One texture bind per canvas frame.
- Cached polygon rotation, origin, and closing vertex per draw.
- Direct historical sine/cosine lookup access.
- Correct uLibrary tint and vertex argument handling.

Correctness is part of the performance gate; the fixed build must remove the
leak and preserve scene/state checksums before timing is considered.

## Dependency Backport Review

Later Box2D history contains substantial performance work, but it is not a
drop-in patch for 2.0.1:

- The 2011 [cache-friendly solver change](https://github.com/erincatto/box2d/commit/33d649c)
  changes 52 files and solver/body/joint representations.
- The [dynamic-tree insertion overhaul](https://github.com/erincatto/box2d/commit/ad87ea0)
  targets a broad-phase architecture that does not exist in Pocket Physics'
  2.0.1 sweep-and-prune implementation.

Wholesale adoption would combine API migration, numeric changes, and algorithm
changes, preventing attribution and risking DS memory limits. Two conservative
2.0.1 candidates were therefore isolated:

- Keep the fixed-point vector-length estimate in `float32` instead of converting
  through software float.
- Skip vector length calculation when both velocity components are at most half
  the limit, where the original clamp is mathematically unable to trigger.

melonDS two-repeat screening, mean DS ticks:

| Candidate | Touch | Hit test | Physics | Render | Frame |
| --- | ---: | ---: | ---: | ---: | ---: |
| Improved baseline | 9,475 | 1,610 | 423,108 | 183,437 | 606,674 |
| Fixed estimate | 9,114 | 1,638 | 414,697 | 189,697 | 604,521 |
| Velocity gate | 9,510 | 1,610 | 413,784 | 190,351 | 604,264 |
| Combined | 9,160 | 1,638 | 407,402 | 194,615 | 602,145 |

The combined candidate improved whole-frame time by 0.75% but regressed render
by 6.1%. DeSmuME showed a larger 3.8% frame gain and a 14.3% render regression.
The backports remain available as research profiles but are not enabled in the
release profile.

## Revisited Compiler Profiles

Previously rejected profiles were rebuilt after the final render-cache changes.
melonDS results:

| Profile | Touch | Hit test | Physics | Render | Frame | Frame delta |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| ARM/O3 fixed baseline | 9,475 | 1,610 | 423,108 | 183,437 | 606,674 | 0.00% |
| Float ARM/O3 | 12,446 | 3,033 | 586,170 | 252,072 | 838,404 | +38.20% |
| Thumb/O2 fixed | 10,309 | 2,983 | 516,048 | 132,486 | 648,781 | +6.94% |
| ARM plus Thumb canvas | 9,457 | 1,607 | 423,150 | 185,725 | 609,003 | +0.38% |
| Whole-program LTO | 9,298 | 1,370 | 425,029 | 180,827 | 605,979 | -0.12% |

LTO changed from rejected to accepted after the final code was remeasured. Its
archive failure was also fixed by using GCC's plugin-aware archiver.

Cross-emulator comparison for the selected additional optimization:

| Emulator | Metric | No LTO | LTO | Delta |
| --- | --- | ---: | ---: | ---: |
| melonDS 1.1 | Touch | 9,475 | 9,298 | -1.87% |
| melonDS 1.1 | Hit test | 1,610 | 1,370 | -14.91% |
| melonDS 1.1 | Physics | 423,108 | 425,029 | +0.45% |
| melonDS 1.1 | Render | 183,437 | 180,827 | -1.42% |
| melonDS 1.1 | Frame | 606,674 | 605,979 | -0.12% |
| DeSmuME 0.9.11 | Touch | 13,445 | 13,294 | -1.12% |
| DeSmuME 0.9.11 | Hit test | 1,877 | 1,580 | -15.82% |
| DeSmuME 0.9.11 | Physics | 544,593 | 538,175 | -1.18% |
| DeSmuME 0.9.11 | Render | 120,482 | 116,002 | -3.72% |
| DeSmuME 0.9.11 | Frame | 665,659 | 655,613 | -1.51% |

The melonDS physics phase regression is retained explicitly. LTO was accepted
because touch, hit testing, rendering, and complete frame time improve in both
emulators, while behavior and final fixed-point checksum remain identical.

## Further Measured Rejections

- **LTO plus both Box2D candidates:** melonDS frame improved 1.62%, but render
  regressed 6.6%.
- **Per-file ARM/O2 canvas:** melonDS frame improved 1.70%, but render still
  regressed 6.6%; DeSmuME ranked it below combined LTO.
- **Exact reciprocal cache:** render alone improved 0.95%, but code-layout
  effects erased the complete-frame gain and worsened the composed candidate.
- **Canvas plus solver in ITCM:** physics improved strongly, but DeSmuME render
  regressed 18.7% to 28.3% due to repeated long calls out of ITCM.
- **Physics-only ITCM:** removed the canvas long-call issue, but still moved code
  enough to regress render; LTO plus physics ITCM improved frame 0.91% in
  melonDS and 4.67% in DeSmuME while render regressed 1.31% and 16.31%.

These are not deleted from the build matrix. Keeping measured rejections makes
future real-hardware retesting possible and prevents the same attractive ideas
from being accepted later without evidence.

## Selection Rule

The release profile accepts a change only when:

1. All behavioral, topology, allocation, and checksum assertions pass.
2. In-ROM timer repetitions are stable.
3. Complete-frame direction agrees across both emulators.
4. Per-phase regressions are small and disclosed.
5. The change remains source-visible and byte-reproducible.

Physical-hardware evidence may change the final ranking. It must be added as a
new result set rather than overwriting emulator evidence.

# Polygon Validation Hardening

## Defect and Scope

The modern convex-decomposition dependency reports an invalid vertex count but
continues into geometry checks. A default-constructed `b2Polygon` therefore
reaches `GetArea` with empty coordinate arrays. Host sanitizers reproduce the
invalid read in both floating and fixed-point modes. A self-intersecting shape
with zero signed area also reaches centroid division after geometric validation
has already failed. The host fixed-point path traps on division by zero; the
floating-point path is independently diagnosed by the floating divide-by-zero
sanitizer.

These are dependency API defects. The application ordinarily filters and
decomposes stylus geometry before calling this validator. The direct API
reproductions do not establish that an ordinary stylus sketch reaches either
crash, nor do host division semantics establish a physical ARM9 crash.

The candidate returns immediately for counts outside 3 through 8, and returns
after failed convexity, simplicity, or signed-area prechecks before normals,
temporary arrays, and centroid evaluation. Valid geometry follows the original
remaining checks. Invalid diagnostic messages report the failed precheck rather
than a later overwritten error. A separate diagnostic compatibility repair
casts fixed-point coordinates before passing them to `%f`.

All changes are in the modern source transform. The exact historical source
and its behavior remain unchanged. Line directives preserve the preceding
control's assertion line metadata, so comparison control ROM identity remains
an independently testable gate.

## Validation Design

The [shared cases](../tools/repro/benchmark_source/pp_polygon_validation.h)
execute the compiled dependency, not a replacement model. Sixteen checks cover
empty and invalid-count objects, one/two vertices, the upper vertex limit,
clockwise and counterclockwise shapes, repeated vertices, zero area,
self-intersection, concavity, and repeated validation after area evaluation.
Both host scalar modes and the ARM9 DS hardware-math profile use these cases.
The expected ordered boolean checksum is `722c5bcb`.

The [host runner](../tools/repro/test_polygon_validation.py) compiles independent
legacy and guarded executables. Empty and zero-area self-intersecting shapes
must fail the legacy controls with sanitizer diagnostics; the guarded suite
must finish all sixteen checks. Floating-point runs use address, undefined
behavior, and floating divide-by-zero sanitizers. Fixed-point runs use the
address sanitizer; this is not a complete signed-integer/shift undefined-
behavior audit. Compiler identity, commands, logs, and sanitizer environment
are recorded. LeakSanitizer is enabled on Linux and unavailable in this macOS
execution mode.

The [candidate runner](../tools/repro/test_polygon_guard.sh) builds the selected
control, two independent guarded ROM/ELF specimens, and a separate API-test ROM.
The first comparison measures the unchanged touch-to-physics/render workload.
The second executes the additional ARM9 API checks after all timed work. The
API-test binary is not a substitute for the primary timing specimen.
The [result checker](../tools/repro/check_polygon_validation.py) rejects missing,
duplicate, failed, mislabeled, incomplete, or wrong-checksum API records,
including an entire missing API result in an otherwise recorded repetition.

```sh
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_polygon_guard.sh
REPEATS=3 tools/repro/test_polygon_api_inrom.sh
```

The full `test_all.sh` workflow includes host regressions and the additional
ARM9 API validation. The archive's two-build identity gates remain mandatory.
Before promotion, selection additionally requires no material touch, physics,
or cadence regression in the primary comparison. Physical-console validation
and broader malformed-sketch reachability remain separate open work.

## Empirical Result

The [published experiment](../research/results/polygon-validation/) preserves
two identical guarded ROM/ELF builds, macOS and Linux sanitizer controls, and
twelve melonDS runs split between primary timing and separate API validation.
All sixteen shared ARM9 cases pass with checksum `722c5bcb`; recorded scene and
render-work evidence match the byte-identified legacy control.

The primary guarded specimen measures 6,223 touch ticks, 1,629 hit-test ticks,
110,987 physics ticks, and 556,655 complete-frame ticks, versus 6,239, 1,594,
111,032, and 556,860 for the control. The hit-test cost increases by 35 ticks
(2.20%, approximately 1.04 microseconds). Other differences are tiny and are
not credited as a general speedup. Correctness-driven promotion must retain
this tradeoff in its record and revalidate the resulting release-role builds.

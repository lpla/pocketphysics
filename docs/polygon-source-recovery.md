# Historical Polygon Source Recovery

## Result and Boundary

The complete **30,768-byte polygon/decomposition executable unit** now compiles
from preserved March 2008 C++ with devkitARM r21 GCC 4.1.2. All 48 method
boundaries match the release. No polygon instruction transcription, per-method
compiler configuration, section selection, or post-link replacement is used.

The source includes intersection, winding, convexity and simplicity tests,
constructors, triangulation, parallel-edge merging, convex decomposition,
usability validation, hull construction, graph traversal, and initialization.
The [method inventory](../research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-method-layout.json)
records names, offsets and executable-section lengths. These counts include
literal pools and padding, not just instructions. Storage, string data,
initializer entries and weak inline functions are independently covered by the
[normalized object identity](../research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-object-identity.json)
and full linked-payload gates.

This is source recovery, not a performance optimization. The historical bugs
and numerical behavior remain part of the preserved release specimen.

The [complete archived-source validation](../research/results/archived-polygon-source/)
preserves two clean builds and nine fresh melonDS runs at the polygon-recovery
revision, before the subsequent solver and font recoveries.

## Archival Evidence

Two fixed-point Box2D patches survive as attachments on the original Box2D
forum, preserved by the Internet Archive:

| Attachment | Preserved name | Archive evidence |
| --- | --- | --- |
| 96 | `box2d_fixed_r127.patch.zip` | HTTP Last-Modified: March 8, 2008 |
| 97 | `box2d_fixed_2.patch.zip` | ZIP member timestamp: March 10, 2008; HTTP Last-Modified: March 10, 2008 |

The unmodified [March 8 patch](../research/reference/box2d-fixed-20080308/)
and [March 10 patch](../research/reference/box2d-fixed-20080310/) are preserved
with their original licenses, retrieval URLs, and SHA-256 identities. Their
core diffs identify SVN revision 127; their added files contain the standalone
fixed-point convex-decomposition contribution. Archive capture dates are later
than 2008. ZIP and HTTP timestamps support the historical chronology but do
not independently establish authorship or the exact local checkout used to
build Pocket Physics.

The March 10 patch supplies the polygon and triangle source used here. The
[May 2008 SVN r152 import](../research/reference/convex-decomposition-r152/)
is a useful comparison reference, but it has a larger node structure and a
different tracing algorithm. It cannot substitute for the pre-release source.

## Reconstruction Delta

The [compiled polygon source](../research/reconstruction/v06/dependencies/box2d/Contrib/b2Polygon.cpp)
and [header](../research/reconstruction/v06/dependencies/box2d/Contrib/b2Polygon.h)
retain the archived source ordering and line numbers. The sole substantive
delta is the incoming-node overload of `GetRightestConnection`: its argument
is a pointer in the released binary rather than the reference declared in
the archived patch. The definition, member access, identity comparison, and
two callers are adapted consistently. The altered declarations are marked
inline without shifting assertion line numbers.

This ABI adjustment is binary-constrained reconstruction. It is not evidence
that the forum attachment itself was the producer's final source. No original
producer checkout or build log has been found.

The preserved source naturally produces the 140-byte ARM node layout, the
pointer-returning `TraceEdge`, the released assertion filename and line 1601,
and the compiler's historical comparison operand order. The release's direction
subtraction and triangle boundary tests are retained without modern correction.
There is no inactive compiler-context function or `#line` override.

## Compiler and Acceptance

The complete unit is compiled once, without `-ffunction-sections`, using the
historical Box2D flags:

```text
-O2 -fomit-frame-pointer -ffast-math
-march=armv5te -mtune=arm946e-s -mthumb-interwork
-DARM9 -fno-rtti -fno-exceptions
-DTARGET_FLOAT32_IS_FIXED -DTARGET_IS_NDS
```

The [boundary verifier](../tools/repro/verify_polygon_object.py) checks the
complete executable section and all 48 symbol boundaries, including local
initialization functions. It reads the compiler object without modifying it.
The normalized gate covers allocated section contents and layout, relocations,
exported symbols and ELF flags. Debug paths, compiler comments and
nonallocated ARM attributes are not program data and are excluded.

Relocation-masked comparisons are diagnostic only. Acceptance requires the
unmasked ARM9 link to retain SHA-256
`b889ac4a411285d7427309ea08999c82df7051f972bebdff76273e634476a17c`
before the remaining non-polygon reconstructed regions are applied. The final
ARM9 and packaged ROM must retain their canonical release identities.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The clean-build test independently compares payloads, ELF files, ROMs and
byte-provenance reports. The final ROM must retain SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
melonDS validates the derived touch/physics/render experiment using in-ROM
ARM9 timing; byte identity and emulator testing do not prove physical
Nintendo DS performance.

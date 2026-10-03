# Historical Polygon Source Recovery

## Result and Boundary

The release's 30,768-byte polygon/decomposition unit now contains **9,256 bytes
compiled from C++** and **21,512 bytes of explicitly residual ARM assembly**.
The reviewed layout selects 41 complete compiler-emitted methods and retains
seven unresolved methods. The former whole-unit ARM9 section replacement is
removed. This is partial source recovery, not a new performance optimization
or a claim that the remaining assembly has been recovered to C++.

The accepted C++ includes intersection, area, winding, convexity and simplicity
checks, reversal, polygon/node constructors and destructors, vertex extraction,
triangle addition, pinch-point resolution, hull construction, triangle
polygonization, ear checking, decomposition orchestration, and static
initialization. The exact method names, lengths, ordering, and source boundary
are recorded in the [method inventory](../research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-method-layout.json).

| Unresolved method | Executable-section bytes |
| --- | ---: |
| `b2Polygon::MergeParallelEdges` | 1,660 |
| `TriangulatePolygon` | 6,812 |
| `b2Polygon::IsUsable(bool)` | 3,420 |
| `DecomposeConvexAndAddTo` | 2,916 |
| Pointer-argument rightmost-connection search | 4,328 |
| Vector-argument rightmost-connection wrapper | 120 |
| `TraceEdge` | 2,256 |
| Total residual | 21,512 |

Counts include literal pools inside executable sections. The source-built
56-byte constant storage and four-byte initializer entry are outside this
denominator. Original weak inline definitions also compile from C++; their
linkage is independently constrained by the full payload identity.

## Compiler and Linker Reconstruction

The preserved [C++ unit](../research/reconstruction/v06/dependencies/box2d/Contrib/b2Polygon.cpp)
is compiled unchanged with devkitARM r21 GCC 4.1.2, the historical fixed-point
Box2D flags, and `-ffunction-sections`. Thirty-nine methods use the baseline
compiler configuration. The unchanged membership method is selected from a
second compilation with `-fno-tree-fre`; the complete-object vector constructor
is selected from a third compilation with `-fno-tree-dominator-opts`. Those
controls reproduce the release's equality-comparison operand order without
editing a compiled instruction or changing the C++ algorithm. Only the one
verified method is selected from each controlled compilation; their other
definitions, storage, and initializers are not installed. The
[selection tool](../tools/repro/prepare_polygon_object.py) validates every
accepted section's length and executable flags. It weakens unselected global
function definitions and exposes named unit-local constants for assembly
relocations. It does not rewrite code, data, or relocations. The
[relocatable linker layout](../research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-object-layout.ld)
selects complete sections and discards inactive alternatives. Every output
section has zero VMA until the final application link.
The old linker requires exact relative object filenames in this layout; the
build runs the relocatable link in a fixed directory. An incorrect selector
leaves orphan sections and is rejected by the normalized object identity gate.
These configurations are sufficient for binary reproduction; they are not
proof that the original producer used the same per-method compiler commands.

The [residual methods](../research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-methods-residual.S)
contain ARM mnemonics with symbolic calls, internal branches, constant names,
and typed literal/string data. GNU ld generates ARM-to-Thumb veneers; release
veneer instructions and absolute program addresses are not embedded as inputs.
The shared constants and their initialization remain compiler output.

String references require section-relative relocations. A named label at the
beginning of a mergeable string pool plus an offset is not interchangeable:
GNU ld can merge the label's first string and then apply that offset, producing
a different or invalid pointer. The reconstruction preserves the two historical
string-pool sections and uses their section symbols and original string
offsets. This recovers the released assertion pointers without hardcoding
their final addresses or patching compiled instructions.

## Evidence and Acceptance

Function sizes from a previously combined object were not sufficient boundary
evidence: duplicate discarded definitions could overwrite size metadata in the
old linker. Method boundaries were cross-checked against input-section lengths,
the reviewed order, and the release payload. Preliminary relocation-masked
comparisons were diagnostic only. Acceptance requires the entire relocated
30,768-byte unit to match without masks, followed by the full ARM9 hash gate
with the polygon replacement absent.

The [object identity](../research/reconstruction/v06/dependencies/box2d/reconstructed/polygon-object-identity.json)
covers allocated contents and layout, relocations, exported symbols, and ELF
flags. It is a release-constrained reconstruction identity, not an independently
preserved original distribution object. Unknown polygon executable sections
fail the provenance audit; only inventoried C++ sections receive source credit.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The clean-build test independently compares payloads, ELF files, ROMs, and
provenance reports. The final ROM must retain SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
melonDS validates the derived touch/physics/render experiment; neither byte
identity nor emulator testing proves physical Nintendo DS performance.

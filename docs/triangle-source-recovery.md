# Historical Triangle Source Recovery

## Result

The historical `b2Triangle` compilation unit is produced entirely from C++.
Its 2,708 executable-section bytes and four-byte static-constructor table entry
match the release without post-link replacement. The reconstructed ARM9 unit
and table entry have been removed. The object also contains 52 bytes of
zero-initialized storage, for 2,764 allocated bytes in total.

This is a source-recovery change, not a physics optimization. The release's
strict triangle-boundary behavior is preserved only in the historical tree;
the modern and improved profiles do not consume this source file.

## Semantic Difference

The available C++ used inclusive barycentric comparisons. The release instead
tests `u > 0`, `v > 0`, and `u + v < 1`, excluding triangle edges. After function
ordering was recovered, these three relations accounted for four differing
instruction bytes: two `BLT`/`BLE` conditions and two conditional result moves.
Changing the C++ comparisons, rather than their compiled instructions, resolves
the difference.

## Compiler and Link Order

The unit uses the recovered devkitARM r21 GCC 4.1.2 flags:

```text
-g -O2 -fomit-frame-pointer -ffast-math
-march=armv5te -mtune=arm946e-s -mthumb-interwork
-DARM9 -fno-rtti -fno-exceptions
-DTARGET_FLOAT32_IS_FIXED -DTARGET_IS_NDS -ffunction-sections
```

The [relocatable-object layout](../research/reconstruction/v06/dependencies/box2d/reconstructed/triangle-object-layout.ld)
orders the compiler-generated function sections as destructors, assignment,
default constructors, parameterized constructors, containment testing, and
static initialization. GNU `ld -r` combines them into the historical `.text`
unit while retaining relocations. No function instructions, branch encodings,
literal values, or initializer pointers are rewritten.

The compiler emits the static-initialization routine, its wrapper, its literal
pool, and the initializer relocation directly from the ordinary fixed-point
constants in `b2Settings.h`. This also removes instruction encodings that had
been misclassified as data in the residual assembly unit. Source-byte coverage
credits the complete recovered unit, not merely its initializer.

## Acceptance Gates

The [object manifest](../research/reconstruction/v06/dependencies/box2d/reconstructed/triangle-object-identity.json)
checks ELF flags, allocated sections and layout, relocations, and exported
symbols after the relocatable link and before archive installation. It records
a release-constrained recovered object, not an independently preserved original
distribution member. Final linked text, the initializer entry, the full ARM9
payload, and the ROM independently constrain acceptance.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
```

The exact acceptance test rebuilds both processors and all target runtimes twice
from clean trees, compares payloads and ELF files, and verifies the final ROM
SHA-256 `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
The intermediate ARM9 link identity changes because the real linker now resolves
the recovered constructor and containment symbols at their release addresses.
That intermediate identity is a build guard, not the release oracle.

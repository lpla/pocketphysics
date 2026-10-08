# Historical TinyXML Source Recovery

## Result

All four TinyXML 2.5.3 archive members now compile from the maintained C++
source. Two previously reconstructed translation units, `tinyxml` and
`tinyxmlparser`, have been removed from the assembly corpus. No C++ algorithm
change or post-compilation instruction edit is required.

| Member | Executable-section bytes | Allocated bytes | Linked executable bytes |
| --- | ---: | ---: | ---: |
| `tinystr.o` | 496 | 512 | 496 |
| `tinyxml.o` | 9,472 | 10,821 | 9,472 |
| `tinyxmlerror.o` | 0 | 564 | 0 |
| `tinyxmlparser.o` | 5,836 | 7,544 | 5,764 |
| Total | 15,804 | 19,441 | 15,732 |

The two additional source recoveries account for 15,236 executable-section
bytes linked into the release. The archive-level count includes COMDAT
implementations discarded by the final link; those bytes are not credited as
release-ROM source coverage.

## Pathnames Are Program Inputs

TinyXML's active assertions embed `__FILE__` in allocated string sections.
Compiling identical C++ at another path changes those strings, subsequent
string offsets, and literal-pool references in many otherwise identical
functions. These are target program bytes, not disposable debug metadata.

The build copies the maintained `source` and `include` directories into this
fixed layout inside its disposable container:

```text
/home/tob/coding/dsdev/tob/tinyxml/source/
/home/tob/coding/dsdev/tob/tinyxml/include/
```

The exact filenames occur in the release's assertion messages. They are
historical program data, not host-specific paths required on the researcher's
computer. Source and headers are compiled by absolute path within the container
with the already recovered devkitARM r21 configuration:

```text
-g -Wall -O2 -march=armv5te -mtune=arm946e-s
-fomit-frame-pointer -ffast-math -mthumb -mthumb-interwork
-fno-rtti -fno-exceptions
```

No `__FILE__` macro substitution, object-string replacement, or instruction
patching is used. The ordinary compiler emits the required target strings.

## Identity and Acceptance

The [manifest](../research/reconstruction/v06/dependencies/tinyxml/c-object-identities.json)
gates ELF flags, allocated section bytes/layout, relocations, and exported
symbols for all four C++ objects before archive construction. Its comparison
identities derive from the accepted release-constrained reconstruction, not an
independently preserved original TinyXML binary distribution. The two removed
assembly units provide the same normalized identity as the accepted C++
outputs. Final ARM9 and ROM hash guards independently constrain their linked
content and layout.

The [verifier tests](../tools/repro/test_verify_recovered_objects.py) distinguish
nonallocated debug-path changes, which are normalized away, from allocated
assertion-filename changes, which must fail identity. This distinction prevents
a future reproducibility cleanup from accidentally deleting program input.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
```

The acceptance test builds twice from clean trees, verifies every object and
payload identity, and byte-compares both processor ELF files, the ROM, and
executable-provenance reports. The final ROM remains subject to SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.

This is source recovery, not an optimization or modernization of the parser.
It does not change the historical error handling or establish security for
untrusted XML. Remaining uLibrary dependency reconstructions
are recorded separately in the [source-coverage report](executable-source-coverage.md).

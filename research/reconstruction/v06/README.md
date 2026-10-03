# Pocket Physics v0.6 Source Reconstruction

This directory contains the source corpus needed to reproduce the public 2008
Pocket Physics v0.6 ROM byte for byte using mixed C/C++ and mnemonic assembly.
The release ROM, extracted processor payloads, and historical application or
third-party library objects are not build inputs. Startup and the compiler
runtime libraries used by both processors are rebuilt from source, verified,
and installed after the SDK's precompiled target archives/objects are removed.
The SDK compiler, assembler, linker, and packager executables remain bootstrap
tools, not recovered program code.

## Result

Two independent clean builds reproduce these identities:

| Artifact | Size | SHA-256 |
| --- | ---: | --- |
| Pre-reconstruction ARM9 link | 827,636 B | `4848cad81a714afc2aeb140ebaf8085c54a49b61dfdfb05fba70b890eaaf0927` |
| Final ARM9 payload | 827,636 B | `0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89` |
| ARM7 payload | 62,828 B | `b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec` |
| Packaged ROM | 894,016 B | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |

Run the acceptance test from a full Git checkout:

```sh
tools/repro/test_v06_exact.sh
```

The test downloads nine checksum-locked historical inputs, performs two clean
container builds in separate output trees, checks the four expected hashes in
each build, and byte-compares the generated binaries and ELF files.

## Source Composition

| Component | Reconstructed form |
| --- | --- |
| Pocket Physics ARM7 and ARM9 application | Git revision `e9b621e`, seven files restored from `3e538e0`, and the reviewed `application.patch` and `arm9/ui-source.patch` |
| libnds | Upstream revision `df7b1022`, recovered C declaration/compiler settings, and historical headers; no residual reconstructed members |
| libfat | Historical C/assembly source with the recovered source and archive member order |
| libpng 1.2.8 | Upstream C for all 15 archive members with recovered configuration and source patches |
| zlib 1.2.3 | Upstream C for 11 of 12 archive members; documented source/compiler configuration and one residual assembly member |
| TinyXML 2.5.3 | C++ source for all four members, compiled at the fixed historical path to preserve assertion strings |
| uLibrary | Historical C source, source variants, and two residual assembly files |
| Box2D r132/r134 hybrid | C++ compilation units with a residual contact velocity method; the polygon member selects 42 compiler-emitted methods and six residual assembly methods |
| ARM9 residual regions | Named ARM/Thumb mnemonic sections linked at the recovered release addresses |
| Startup, libgcc, newlib, libstdc++ | Locked upstream C/C++ and original hardware assembly, historical producer patches, 1,774 archive-member identities and 12 startup/CRT identities |

The residual regions cover compiler/runtime-sensitive code. The complete
`b2Triangle` unit and its initializer now compile from C++ and no longer use
section replacement. `b2Shape::ResetProxy` also compiles from C++ without
replacement, preserving the release's missing-proxy handling. The GUI-setup
and thumbnail-rendering replacements are also removed. The contact solver is
linked from 14,940 C++ bytes and a separately attributed 5,160-byte residual
velocity method, without its former whole-unit replacement. The polygon unit's
12,676 C++ bytes and 18,092 residual assembly bytes also link through separately
attributed method sections without a whole-unit replacement. Residual regions
are applied only after the ordinary application link has produced the guarded
pre-reconstruction ARM9 hash above. This makes a
change in any normal source object, dependency, archive order, or link layout
fail before section replacement can occur. This guard constrains binary
identity; it does not recover the corresponding high-level source.

The [C-source recovery report](../../../docs/c-source-recovery.md) records
object-level identities, compiler configuration, linked-code coverage, and
remaining work. Seven uppercase `.S` files remain in this corpus, including
the residual-region file and a data-only libfat table.

## Assembly Policy

Recovered executable regions are represented as ARM or Thumb mnemonics with
labels, symbols, sections, and relocations. They are not byte arrays and do not
use `.word` or `.incbin` to encode instructions. `.long` directives are retained
where the original object contains typed data, literal pools, switch tables, or
relocation targets; `.byte` is used only for typed data and padding.

A lexical guard is run with:

```sh
tools/repro/audit_reconstruction_source.py
```

This guard rejects selected binary extensions, NUL-bearing files, `.incbin`,
and `.word` in recovered `.S` files. It does not classify `.long` expressions
as data or instructions or prove semantic equivalence. The
[runtime identity gate](../../../tools/repro/verify_runtime_objects.py) separately
checks the source-built target runtime. The tracked-binary inventory is a
separate file-level check, not a proof of complete source recovery.

## Build Inputs

The exact URLs and SHA-256 checksums are recorded in
[`research/provenance/input-locks.csv`](../../provenance/input-locks.csv):

- devkitPro SDK snapshot dated 3 May 2007, used for the devkitARM r20 SDK and
  source-era runtime layout;
- devkitARM r21, used for the final compiler, linker, assembler, and ndstool
  1.36;
- upstream libnds revision `df7b1022`;
- upstream zlib 1.2.3;
- upstream libpng tag `v1.2.8`;
- upstream newlib 1.15.0;
- upstream GCC 4.1.2 core and C++ sources;
- devkitPro producer revision `8007fd4bcb992f8aa9376331104d8bc8d3c7cf45`.

All other source is tracked in this directory or reconstructed from the named
Git revisions by [`build_v06_exact.sh`](../../../tools/repro/build_v06_exact.sh).

Historical third-party files retain their original line endings, encoding, and
whitespace. This is deliberate archival preservation; the source audit checks
their text/binary boundary without mechanically reformatting them.

# Pocket Physics v0.6 Source Reconstruction

This directory contains the source corpus needed to reproduce the public 2008
Pocket Physics v0.6 ROM byte for byte using mixed C/C++ and mnemonic assembly.
The release ROM, extracted processor payloads, and historical application or
third-party library objects are not build inputs. Precompiled startup and
compiler runtime libraries supplied by the pinned SDK are build inputs; their
source rebuild remains outside the current reconstruction.

## Result

Two independent clean builds reproduce these identities:

| Artifact | Size | SHA-256 |
| --- | ---: | --- |
| Pre-reconstruction ARM9 link | 827,636 B | `4eb421ef565b8a725d8fb7270e5f7102b968542f36c4b91b4ebc5eaaf7e06526` |
| Final ARM9 payload | 827,636 B | `0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89` |
| ARM7 payload | 62,828 B | `b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec` |
| Packaged ROM | 894,016 B | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |

Run the acceptance test from a full Git checkout:

```sh
tools/repro/test_v06_exact.sh
```

The test downloads five checksum-locked historical inputs, performs two clean
container builds in separate output trees, checks the four expected hashes in
each build, and byte-compares the generated binaries and ELF files.

## Source Composition

| Component | Reconstructed form |
| --- | --- |
| Pocket Physics ARM7 and ARM9 application | Git revision `e9b621e`, seven files restored from `3e538e0`, and the reviewed `application.patch` |
| libnds | Upstream revision `df7b1022`, historical headers, and six mnemonic assembly objects for host-sensitive compiler output |
| libfat | Historical C/assembly source with the recovered source and archive member order |
| libpng 1.2.8 | Upstream C for 11 of 15 archive members; historical configuration, two small source changes, and four residual assembly members |
| zlib 1.2.3 | Upstream C for 10 of 12 archive members; two source configuration/layout changes and two residual assembly members |
| TinyXML 2.5.3 | C++ source plus mnemonic assembly for the two host-sensitive translation units |
| uLibrary | Historical C source, source variants, and two residual assembly files |
| Box2D r132/r134 hybrid | C++ source for 32 archive members; the final convex-decomposition member is linked from two mnemonic components and one recovered C++ function |
| ARM9 residual regions | Named ARM/Thumb mnemonic sections linked at the recovered release addresses |
| Startup, libgcc, newlib, libstdc++ | Precompiled inputs from the pinned SDK/toolchain archives |

The residual regions cover compiler/runtime-sensitive code and a four-byte
initializer. They are applied only after the ordinary application
link has produced the guarded pre-reconstruction ARM9 hash above. This makes a
change in any normal source object, dependency, archive order, or link layout
fail before section replacement can occur. This guard constrains binary
identity; it does not recover the corresponding high-level source.

The [C-source recovery report](../../../docs/c-source-recovery.md) records
object-level identities, compiler configuration, linked-code coverage, and
remaining work. Twenty uppercase `.S` files remain in this corpus, including
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
as data or instructions, prove semantic equivalence, or inspect linked SDK
runtimes. The tracked-binary inventory is a separate file-level check, not a
proof of complete source recovery.

## Build Inputs

The exact URLs and SHA-256 checksums are recorded in
[`research/provenance/input-locks.csv`](../../provenance/input-locks.csv):

- devkitPro SDK snapshot dated 3 May 2007, used for the devkitARM r20 SDK and
  source-era runtime layout;
- devkitARM r21, used for the final compiler, linker, assembler, and ndstool
  1.36;
- upstream libnds revision `df7b1022`;
- upstream zlib 1.2.3;
- upstream libpng tag `v1.2.8`.

All other source is tracked in this directory or reconstructed from the named
Git revisions by [`build_v06_exact.sh`](../../../tools/repro/build_v06_exact.sh).

Historical third-party files retain their original line endings, encoding, and
whitespace. This is deliberate archival preservation; the source audit checks
their text/binary boundary without mechanically reformatting them.

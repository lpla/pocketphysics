# Pocket Physics v0.6 Source Reconstruction

This directory contains the source corpus needed to reproduce the public 2008
Pocket Physics v0.6 ROM byte for byte. The release ROM, extracted processor
payloads, historical object files, and archived libraries are not build inputs.

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

The test downloads three checksum-locked historical inputs, performs two clean
container builds in separate output trees, checks the four expected hashes in
each build, and byte-compares the generated binaries and ELF files.

## Source Composition

| Component | Reconstructed form |
| --- | --- |
| Pocket Physics ARM7 and ARM9 application | Git revision `e9b621e`, six files restored from `3e538e0`, and the reviewed `application.patch` |
| libnds | Upstream revision `df7b1022`, historical headers, and six mnemonic assembly objects for host-sensitive compiler output |
| libfat | Historical C/assembly source with the recovered source and archive member order |
| libpng and zlib | Named ARM/Thumb mnemonic assembly with symbols, sections, and relocations |
| TinyXML 2.5.3 | C++ source plus mnemonic assembly for the two host-sensitive translation units |
| uLibrary | Historical C source, source variants, and reviewed assembly for three compiler-sensitive routines |
| Box2D r132/r134 hybrid | C++ source for 32 archive members; the final convex-decomposition member is linked from two mnemonic components and one recovered C++ function |
| ARM9 residual regions | Named ARM/Thumb mnemonic sections linked at the recovered release addresses |

The residual regions cover ten compiler/runtime-sensitive code regions and one
four-byte initializer. They are applied only after the ordinary application
link has produced the guarded pre-reconstruction ARM9 hash above. This makes a
change in any normal source object, dependency, archive order, or link layout
fail before section replacement can occur.

## Assembly Policy

Recovered executable regions are represented as ARM or Thumb mnemonics with
labels, symbols, sections, and relocations. They are not byte arrays and do not
use `.word` or `.incbin` to encode instructions. `.long` directives are retained
where the original object contains typed data, literal pools, switch tables, or
relocation targets; `.byte` is used only for typed data and padding.

The policy is checked with:

```sh
tools/repro/audit_reconstruction_source.py
```

The repository's separate tracked-binary audit proves that generated objects,
archives, ELF files, processor payloads, and ROMs do not enter this source tree.

## Build Inputs

The exact URLs and SHA-256 checksums are recorded in
[`research/provenance/input-locks.csv`](../../provenance/input-locks.csv):

- devkitPro SDK snapshot dated 3 May 2007, used for the devkitARM r20 SDK and
  source-era runtime layout;
- devkitARM r21, used for the final compiler, linker, assembler, and ndstool
  1.36;
- upstream libnds revision `df7b1022`.

All other source is tracked in this directory or reconstructed from the named
Git revisions by [`build_v06_exact.sh`](../../../tools/repro/build_v06_exact.sh).

Historical third-party files retain their original line endings, encoding, and
whitespace. This is deliberate archival preservation; the source audit checks
their text/binary boundary without mechanically reformatting them.

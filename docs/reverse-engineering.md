# Historical Source Reconstruction

## Objective

The reconstruction target is the public Pocket Physics v0.6 Nintendo DS ROM
released on 15 March 2008. Success requires a build from maintainable source
that reproduces the release ARM7 payload, ARM9 payload, and packaged ROM byte
for byte.

The release binary is treated only as the experimental oracle. It is never an
input to the source build. Packaging reproduction, behavioral equivalence, and
source-level binary identity are measured separately.

## Acceptance Standard

A historical source build is accepted only when all of the following hold:

1. Application, dependency, startup, and target-runtime sections are produced
   from C, C++, or named mnemonic assembly. Remaining recovered assembly and
   section replacements are disclosed separately; replacing them is required
   for a complete high-level source recovery.
2. Release ARM payloads are not embedded through binary includes, opaque blobs,
   or data-only assembly directives.
3. Generated assets are traceable to repository inputs and documented tools.
4. The compiled ARM9 payload has SHA-256
   `0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89`.
5. The compiled ARM7 payload has SHA-256
   `b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec`.
6. Historical packaging produces the final ROM SHA-256
   `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
7. Two independent clean builds reproduce the payload, ELF, and ROM outputs.

Functionally equivalent code is useful evidence but does not satisfy the byte
identity claim.

## Release Reference

The checksum-locked release archive and preservation mirror are recorded in
[`input-locks.csv`](../research/provenance/input-locks.csv). The primary binary
identities are:

| Artifact | Size | SHA-256 |
| --- | ---: | --- |
| Pocket Physics v0.6 ROM | 894,016 B | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| ARM9 payload | 827,636 B | `0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89` |
| ARM7 payload | 62,828 B | `b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec` |

The release uses ARM9 load address `0x02000000`. Known application functions and
instrumentation entry points are recorded in
[`v06-address-map.csv`](../research/reverse-engineering/v06-address-map.csv).

## Evidence Corpus

The repository preserves several independent evidence classes:

- The complete Git history, including the v0.6-era source tree and later source
  repairs.
- The tracked `pocketphysics_src.tgz` source snapshot.
- Historical generated objects and build products, inventoried in
  [`tracked-binaries.csv`](../research/provenance/tracked-binaries.csv).
- The public release ROM and its two processor payloads.
- The devkitARM r21 archive and historical ndstool 1.36 executable.
- Source snapshots for Box2D, TinyXML, convex decomposition, libnds, uLibrary,
  and the ARM7 runtime candidates.

Each input is classified by provenance and hash before it is used for code or
toolchain attribution.

## Exact Source Build

[`build_v06_exact.sh`](../tools/repro/build_v06_exact.sh) constructs the
application tree from Git, downloads nine checksum-locked historical source
and toolchain inputs, rebuilds the seven application dependency libraries and
both processors with source-built startup and runtime libraries, links the
reconstructed sections, and packages the ROM with ndstool 1.36. It checks the
pre-reconstruction ARM9 link, final ARM9, ARM7, and ROM hashes before returning.

[`test_v06_exact.sh`](../tools/repro/test_v06_exact.sh) runs this process twice
in independent clean trees and byte-compares the binaries and ELF files. The
complete source composition is inventoried in the
[`v0.6 reconstruction README`](../research/reconstruction/v06/README.md).

## Packaging Control

[`build_v06_repack_control.sh`](../tools/repro/build_v06_repack_control.sh)
extracts the verified release payloads and repackages them independently. This
fixes the cartridge header, banner, processor offsets, padding, and ndstool
procedure, but it is not used by or credited to the source reconstruction.

## Instrumented Reference

The historical benchmark adds a source-built overlay to the ARM9 payload
produced by the exact source build:

- Overlay source:
  [`exact_overlay/benchmark_overlay.cpp`](../tools/repro/exact_overlay/benchmark_overlay.cpp).
- no$gba debug transport:
  [`exact_overlay/nocash_debug.S`](../tools/repro/exact_overlay/nocash_debug.S).
- Overlay link address: `0x02300000`.
- Splash-call patch: `0x0200451c`, guarded by preimage `fdf748fd`.
- Post-`setupGui` hook: `0x020045b8`, guarded by preimage `684a0223`.

[`instrument_exact_arm9.py`](../tools/repro/instrument_exact_arm9.py) verifies
the base payload hash, patch preimages, branch encoding, target ranges, and
overlay bounds before producing a derived experimental ROM. The overlay drives
the historical touch dispatcher, physics engine, and renderer through the same
workload used by the modern and improved builds.

The instrumented ROM is intentionally distinct from the release and is
identified by its own hash in every result manifest. Its base ARM9 hash is
guarded before instrumentation.

## Reconstruction Method

The source reconstruction proceeded by measurable reductions in binary distance:

1. Reconstruct each candidate historical source tree from Git and archived
   source inputs.
2. Recreate the 2008 compiler, assembler, linker, libraries, asset tools, flags,
   and object order in an isolated environment.
3. Split release and candidate payloads into code, read-only data, initialized
   data, relocation, and padding regions.
4. Match functions using symbols from historical objects, normalized
   disassembly, call graphs, literal pools, strings, and control-flow hashes.
5. Attribute every unmatched region to source revision, compiler behavior,
   library version, link order, generated data, or still-unrecovered code.
6. Recover semantic source or reviewed assembly for unmatched executable
   regions and record the resulting byte-distance change.
7. Repeat until ARM7, ARM9, and final ROM hashes match the release oracle.

Intermediate candidates were evaluated by exact hashes and region-level
distance. A lower byte distance was progress; only zero distance was accepted.

Residual compiler-sensitive executable regions use named ARM/Thumb mnemonics
and explicit data declarations. The complete `b2Triangle` unit, including its
static-initialization routine and table entry, now compiles from C++ and is
removed from section replacement. Its [recovery report](triangle-source-recovery.md)
records the corrected instruction/data boundary. Instruction/data classification
must still be reviewed separately from byte identity.
The source-integrity audit rejects binary files, `.incbin`, and `.word` in the
recovered assembly corpus.

This audit is lexical. It does not independently distinguish a `.long` data
literal from an instruction encoding, recover high-level semantics, or prove
that linked compiler/runtime libraries were rebuilt. The
[C-source recovery report](c-source-recovery.md) records stronger object-level
checks for the libraries recovered to C.

## Current State

| Milestone | Status |
| --- | --- |
| Release archive and payload identity | Complete |
| Historical packaging reproduction | Complete |
| Safe instrumentation of the release oracle | Complete |
| Maintainable modern source build | Complete |
| Reproducible historical dependency configuration | Sufficient for exact mixed-source reconstruction |
| Byte-identical ARM9 and ARM7 from C/C++ and recovered assembly | Complete |
| Byte-identical final ROM from mixed-source reconstruction | Complete |
| zlib/libpng archive members compiled from C | 26 of 27; libpng complete |
| Residual libnds members recovered to C | 6 of 6; both libnds archives fully source-built |
| TinyXML archive members compiled from C++ | 4 of 4; fixed source paths preserve allocated assertion strings |
| Triangle compilation unit and initializer compiled from C++ | Complete; linker ordering and strict barycentric comparisons reproduce the release |
| Shape proxy and two UI regions compiled without section replacement | Complete; release control flow and button coordinates recovered |
| Contact solver high-level source recovery | 14,940 of 20,100 executable bytes; velocity method remains residual assembly |
| Polygon/decomposition high-level source recovery | 12,676 of 30,768 executable bytes; six methods remain residual assembly; whole-unit replacement removed |
| Replacement of residual assembly with maintainable high-level source | Incomplete |
| Removal of ARM9 post-link section replacement | Incomplete |
| Source rebuild of startup and compiler runtime libraries used by ARM7/ARM9 | Complete; 1,774 archive-member instances and 12 startup/CRT object identities |
| Executable-section byte provenance across both processors | 641,904 of 675,580 bytes source-compiled; 33,596 residual-reconstruction bytes; 80 linker-generated bytes |

The accepted result was reproduced twice from clean trees. Future edits remain
subordinate to the same release hashes and are rejected automatically when any
source, archive-order, section-layout, or packaging change alters them. An exact
ROM hash is not, by itself, evidence that every implementation has been recovered
to high-level source. The [byte-coverage report](executable-source-coverage.md)
includes the runtime boundary and quantifies remaining executable regions;
it is not a percentage of semantic validation or completion effort.

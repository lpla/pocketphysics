# Reproducibility

This archive distinguishes byte identity, source reproducibility, behavioral
equivalence, and performance evidence. They are different claims and are tested
independently.

## Build Roles

| Role | Input program | Toolchain | Status |
| --- | --- | --- | --- |
| `release-reference` | Public v0.6 ROM | Hash verification and ndstool extraction | Binary oracle |
| `historical-repack` | Verified release ARM9 and ARM7 payloads | devkitARM r21 ndstool 1.36 | Byte-identical packaging control |
| `historical-source` | Reconstructed 2008 source and dependencies | devkitARM r20/r21 historical stack | Byte-identical ARM7, ARM9, ELF, and ROM outputs |
| `modern` | v0.6 C++ tree from Git | BlocksDS 1.21.1 and uLibrary 1.14 | Byte-reproducible source port |
| `improved` | Modern source plus explicit fixes and optimizations | Same locked BlocksDS stack | Byte-reproducible measured profile |

The release reference defines the binary oracle. The historical source build
meets that oracle without consuming the release ROM or extracted payloads. The
archival repack is retained as an independent packaging control.

## Locked Inputs

The machine-readable lock is
[`research/provenance/input-locks.csv`](../research/provenance/input-locks.csv).
Important controls include:

- Public release ZIP and both release ROM hashes.
- devkitPro 2007-05-03 SDK, devkitARM r21, and libnds source revision hashes.
- Debian base image digest and dated signed package snapshots.
- BlocksDS image digest and exact package archive hashes.
- Box2D, TinyXML, and convex-decomposition source hashes.
- melonDS 1.1 AppImage hash and exact DeSmuME package version.
- Explicit `linux/amd64` containers for legacy x86 tooling and emulator parity.

GameBrew's download host requires the public Pocket Physics page as the HTTP
referrer. The release extractor supplies that header explicitly and still
rejects any archive that does not match the locked SHA-256. If GameBrew is
unavailable, it uses the checksum-identical
[preservation release](https://github.com/lpla/pocketphysics/releases/tag/historical-input-v0.6)
on this fork.

The modern build never runs `pacman -Sy` or resolves an unversioned package at
build time. It installs the archives in
[`blocksds-packages.lock`](../tools/repro/blocksds-packages.lock) with
`wf-pacman -U`.

## Historical Source Build

Run:

```sh
tools/repro/build_v06_exact.sh
```

The script performs these steps:

1. Reconstruct the application tree from Git revisions `e9b621e` and `3e538e0`.
2. Download and verify the 2007 SDK, devkitARM r21, and libnds source revision.
3. Build libnds, libfat, libpng, zlib, TinyXML, uLibrary, and Box2D from the
   tracked C, C++, and mnemonic assembly corpus.
4. Clean-build ARM7 and ARM9 with the recovered flags and object order.
5. Guard the ordinary ARM9 link hash, then link the reviewed residual mnemonic
   sections at their recovered addresses.
6. Package with historical ndstool 1.36, title, and icon.
7. Refuse output unless the ARM7, ARM9, and ROM hashes match the public release.

Payload identities:

| Payload | Size | SHA-256 |
| --- | ---: | --- |
| ARM9 | 827,636 B | `0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89` |
| ARM7 | 62,828 B | `b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec` |
| Final ROM | 894,016 B | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |

`test_v06_exact.sh` performs two clean source builds and byte-compares both
payloads, the pre-reconstruction ARM9 links, ELF files, and final ROMs.

The source corpus and assembly policy are documented in
[`research/reconstruction/v06`](../research/reconstruction/v06/README.md).
`audit_reconstruction_source.py` rejects embedded binaries, binary includes,
and `.word`-encoded recovered assembly.

## Archival Repack Control

`build_v06_repack_control.sh` separately downloads the release and repackages
its verified processor payloads. It validates historical ndstool behavior but
is not a source build and is never used by `build_v06_exact.sh`.

## Modern Source Build

[`build_v06_blocksds.sh`](../tools/repro/build_v06_blocksds.sh) reconstructs the
source tree from repository history rather than trusting a generated source
archive:

- Base tree: commit `e9b621e`.
- Missing source/assets restored from commit `3e538e0`.
- Compatibility and bug-fix transforms:
  [`patch_v06_source.py`](../tools/repro/patch_v06_source.py).
- Dependency transforms:
  [`patch_box2d_source.py`](../tools/repro/patch_box2d_source.py).

Path-prefix maps remove checkout-specific paths. Source enumeration and asset
conversion are sorted. The modern role uses Thumb/O3 and the original floating
Box2D mode to isolate dependency/toolchain modernization from proposed runtime
changes.

```sh
tools/repro/build_v06_blocksds.sh
tools/repro/test_v06_repro.sh
```

Expected uninstrumented result:

```text
93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06  739328 bytes
```

## Improved Source Build

The improved role enables the selected bug fixes and optimizations, ARM code,
fixed-point Box2D, the original DS hardware divider/square-root/trigonometry
path, two conservative later-Box2D backports, physics and line-renderer ITCM
placement, batched rendering, and whole-program LTO. The uninstrumented ITCM
section remains well below the ARM9's 32 KiB limit. LTO archives are created
with `arm-none-eabi-gcc-ar`, which loads GCC's LTO plugin; plain `ar` was
empirically found to produce unresolved archive symbols.

```sh
tools/repro/build_v06_perf.sh
tools/repro/test_v06_perf.sh
```

Expected uninstrumented result:

```text
cbfc4984533a427c1e724096750fb132be9f9f6ff2e30e8dc2fa1eae1c7a7c45  814080 bytes
```

The accepted and rejected changes are documented in
[Optimization Study](optimization-study.md).

The complete 17-profile attribution screen has its own reproducible entry
point because it is substantially longer than a release-role comparison:

```sh
tools/repro/test_optimization_screening.sh
```

## Complete Validation

```sh
tools/repro/test_all.sh
```

The default full loop performs:

- Python syntax and Thumb branch-encoding unit tests.
- Reconstruction source-integrity audit.
- Source-transform preimage checks for application and Box2D patches.
- Tracked-binary manifest verification.
- Two historical source builds and byte comparisons.
- Independent release-payload repack control.
- Two modern builds and byte comparisons.
- Two improved builds and byte comparisons.
- Historical benchmark overlay build on the exact source output with base-hash guards.
- Three complete in-ROM runs for all roles in melonDS.
- Correctness, allocation, checksum, sample-count, and timing assertions.

Generated build products and raw logs are written under `research-artifacts/`.
Versioned evidence is published in [`research/results`](../research/results/)
with source revision, runtime identity, ROM hashes, and assertion output.

DeSmuME can be requested with `EMULATORS=desmume` for supplemental compatibility
work. melonDS is the primary emulator and the pre-hardware optimization
decision baseline.

## Residual Limits

- Docker itself and the host kernel are outside the bit-reproducibility claim.
  All target binaries nevertheless compare byte-for-byte after independent
  clean builds.
- melonDS is not a substitute for physical hardware. The repository
  provides a hardware ingestion and assertion path in
  [Real Hardware](real-hardware.md).
- Future reconstruction changes remain subject to the exact ARM7, ARM9, and ROM
  hashes and the two-clean-build acceptance test in
  [Historical Source Reconstruction](reverse-engineering.md).

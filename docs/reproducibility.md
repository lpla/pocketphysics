# Reproducibility

This archive distinguishes byte identity, source reproducibility, behavioral
equivalence, and performance evidence. They are different claims and are tested
independently.

## Build Roles

| Role | Input program | Toolchain | Intended claim |
| --- | --- | --- | --- |
| `historical-repack` | Verified ARM9 and ARM7 payloads from the public v0.6 ROM | devkitARM r21 ndstool 1.36 | Byte-identical archival repack |
| `modern` | v0.6 C++ tree from git | BlocksDS 1.21.1 and uLibrary 1.14 | Reproducible maintainable source build |
| `improved` | Same C++ tree plus explicit source transforms | Same locked BlocksDS stack | Reproducible fixed and optimized source build |

The historical row is not called a source build. See
[Reverse Engineering](reverse-engineering.md) for the evidence boundary.

## Locked Inputs

The machine-readable lock is
[`research/provenance/input-locks.csv`](../research/provenance/input-locks.csv).
Important controls include:

- Public release ZIP and both release ROM hashes.
- devkitARM r21 archive hash.
- Debian base image digest and dated signed package snapshots.
- BlocksDS image digest and exact package archive hashes.
- Box2D, TinyXML, and convex-decomposition source hashes.
- melonDS 1.1 AppImage hash and exact DeSmuME package version.
- Explicit `linux/amd64` containers for legacy x86 tooling and emulator parity.

The modern build never runs `pacman -Sy` or resolves an unversioned package at
build time. It installs the archives in
[`blocksds-packages.lock`](../tools/repro/blocksds-packages.lock) with
`wf-pacman -U`.

## Historical Archival Repack

Run:

```sh
tools/repro/build_v06_exact.sh
```

The script performs these steps:

1. Download and verify the public GameBrew release archive.
2. Verify `pocketphysics.nds` as
   `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
3. Extract ARM9 and ARM7 with ndstool 1.36 from devkitARM r21.
4. Repack those payloads with the tracked `ppicon.bmp` and historical title.
5. Refuse output unless the final ROM has the public release hash.

Payload identities:

| Payload | Size | SHA-256 |
| --- | ---: | --- |
| ARM9 | 827,636 B | `0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89` |
| ARM7 | 62,828 B | `b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec` |
| Final ROM | 894,016 B | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |

`test_v06_exact.sh` performs two clean repacks and byte-compares both payloads
and both final ROMs.

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
1545483fa3d0b1c1dd45909e25805b294e4b8a75f1adb2220fc15dd421a6a25a  739328 bytes
```

## Improved Source Build

The improved role enables the selected bug fixes and optimizations, ARM code,
fixed-point Box2D, batched rendering, and whole-program LTO. LTO archives are
created with `arm-none-eabi-gcc-ar`, which loads GCC's LTO plugin; plain `ar`
was empirically found to produce unresolved archive symbols.

```sh
tools/repro/build_v06_perf.sh
tools/repro/test_v06_perf.sh
```

Expected uninstrumented result:

```text
84898333bdbd29b3fa9844bf201d701ddfb888b73e0ccc0100f4f73e9872b26a  824320 bytes
```

The accepted and rejected changes are documented in
[Optimization Study](optimization-study.md).

## Complete Validation

```sh
tools/repro/test_all.sh
```

The default full loop performs:

- Python syntax and Thumb branch-encoding unit tests.
- Source-transform preimage checks for application and Box2D patches.
- Tracked-binary manifest verification.
- Two historical repacks and byte comparisons.
- Two modern builds and byte comparisons.
- Two improved builds and byte comparisons.
- Historical benchmark overlay build with release-byte guards.
- Three complete in-ROM runs for all roles in DeSmuME.
- Three complete in-ROM runs for all roles in melonDS.
- Correctness, allocation, checksum, sample-count, and timing assertions.

Generated local files are written under ignored `.codex-artifacts/`. Published
evidence is copied into [`research/results`](../research/results/) and is the
stable GitHub-facing record.

## Residual Limits

- A future disappearance of an upstream URL can prevent a fresh download even
  though its required hash remains known. Mirroring legally redistributable
  inputs is future archive work.
- Docker itself and the host kernel are outside the bit-reproducibility claim.
  All target binaries nevertheless compare byte-for-byte after independent
  clean builds.
- Emulator agreement is not a substitute for physical hardware. The repository
  provides a hardware ingestion and assertion path in
  [Real Hardware](real-hardware.md).
- No original-source byte-identical compilation of the 2008 ROM has been
  achieved. The exact workflow is intentionally and accurately named a repack.

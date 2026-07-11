# Reproducibility

This archive distinguishes byte identity, source reproducibility, behavioral
equivalence, and performance evidence. They are different claims and are tested
independently.

## Build Roles

| Role | Input program | Toolchain | Status |
| --- | --- | --- | --- |
| `release-reference` | Public v0.6 ROM | Hash verification and ndstool extraction | Binary oracle |
| `historical-repack` | Verified release ARM9 and ARM7 payloads | devkitARM r21 ndstool 1.36 | Byte-identical packaging control |
| `historical-source` | Reconstructed 2008 source and dependencies | Reconstructed devkitARM-era build | Active; byte identity required |
| `modern` | v0.6 C++ tree from Git | BlocksDS 1.21.1 and uLibrary 1.14 | Byte-reproducible source port |
| `improved` | Modern source plus explicit fixes and optimizations | Same locked BlocksDS stack | Byte-reproducible measured profile |

The release reference and archival repack define the oracle for the active
[historical source reconstruction](reverse-engineering.md). They do not replace
that work.

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

## Historical Source Reconstruction

The source-build track uses the same payload and ROM hashes as hard acceptance
targets. Candidate builds must also publish their exact source revision,
dependency set, compiler flags, object order, section layout, and normalized
binary-distance report. The method and current milestone table are maintained
in [Historical Source Reconstruction](reverse-engineering.md).

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
path, two conservative later-Box2D backports, physics-only ITCM placement,
batched rendering, and whole-program LTO. The 6,144-byte uninstrumented ITCM
section remains well below the ARM9's 32 KiB limit. LTO archives are created
with `arm-none-eabi-gcc-ar`, which loads GCC's LTO plugin; plain `ar` was
empirically found to produce unresolved archive symbols.

```sh
tools/repro/build_v06_perf.sh
tools/repro/test_v06_perf.sh
```

Expected uninstrumented result:

```text
851b0ce20f119f37c266ff269c44a5c6114ec48a7f3be081316cfcecd229fb83  814080 bytes
```

The accepted and rejected changes are documented in
[Optimization Study](optimization-study.md).

The complete 13-profile attribution screen has its own reproducible entry
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
- Source-transform preimage checks for application and Box2D patches.
- Tracked-binary manifest verification.
- Two historical repacks and byte comparisons.
- Two modern builds and byte comparisons.
- Two improved builds and byte comparisons.
- Historical benchmark overlay build with release-byte guards.
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
- Historical source reconstruction is incomplete until compiled ARM7, ARM9,
  and final ROM outputs match the release byte for byte. Current progress and
  acceptance criteria are maintained in
  [Historical Source Reconstruction](reverse-engineering.md).

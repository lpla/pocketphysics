# Pocket Physics v0.6 Reproducibility

This branch reconstructs the Pocket Physics v0.6 Nintendo DS build from the
repository history plus pinned third-party source archives.

## Release Baseline

GameBrew lists Pocket Physics version 0.6, last updated 2008-03-16. Its v0.6
changelog includes "Massive speed optimizations" and a move to Box2D 2.0.

Verified release archive:

| Artifact | SHA256 |
| --- | --- |
| `pocketphysics-gamebrew.zip` | `953c950217b14610039338918d4849f9ba5ab2ef44b9c92bb902296e5961cfb6` |
| `pocketphysics.nds` | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| `pocketphysics_nothumb.nds` | `64a15ff6c0e0e7235dd716833d68f8adaa9043afc867f5b6523d9c73750e586a` |

To verify/extract a local copy of the release zip:

```sh
tools/repro/extract_release_v06.sh .codex-artifacts/downloads/pocketphysics-gamebrew.zip
```

## Rebuilt Source Inputs

The build starts from git commit `e9b621e` (`2008-03-15 Version 0.6`) and
backfills files that were missing from that historical commit but later restored
in `3e538e0`:

- `arm9/source/PPBoundaryListener.{h,cpp}`
- `arm9/data/icon_back.raw`
- `arm9/data/icon_delete_file.raw`
- `arm9/data/icon_load.raw`
- `arm9/data/icon_move.raw`
- `arm9/data/icon_save.raw`

Pinned third-party sources:

| Dependency | Source | SHA256 |
| --- | --- | --- |
| Box2D 2.0.1 | Debian snapshot `box2d_2.0.1+dfsg1.orig.tar.gz` | `ff35fa514b6a7bcdfd1d83c499d57cdd4dfec7adb1b42aeaeb8dbedfb069fdb0` |
| TinyXML 2.6.2 | Debian snapshot `tinyxml_2.6.2.orig.tar.gz` | `15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593` |
| Convex decomposition helpers | `91Act/box2d_fixed` commit `893e0d71a0fbffdbb3ccbd61c166311525be5ada` | Per-file hashes in `tools/repro/build_v06_blocksds.sh` |

Toolchain container:

```text
skylyrac/blocksds:slim-v1.20.0
```

The build installs BlocksDS packages inside the container and records the exact
package versions in `.codex-artifacts/build/v06-blocksds/logs/toolchain-packages.txt`.
The verified package set for the current build is:

```text
blocksds-toolchain 1.20.0-1
blocksds-ulibrary 1.14-1
toolchain-gcc-arm-none-eabi-gcc 1:16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-binutils 2.46.0-1
toolchain-gcc-arm-none-eabi-libstdcxx-picolibc 16.0.1.r228438.d284b73a9b4-1
toolchain-gcc-arm-none-eabi-picolibc-generic 1.8.11.r26127.2a7b920f5-1
toolchain-gcc-arm-none-eabi-libpng16 1.6.58-1
toolchain-gcc-arm-none-eabi-zlib 1.3.2-1
runtime-zlib 1.3.2-1
```

## Build

```sh
tools/repro/build_v06_blocksds.sh
```

Current rebuilt ROM:

```text
.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds
SHA256 1fd396ead6954c83ff59e5698f3b91187d99ca6ae054b61e6c048fc445563211
Size 739328 bytes
ARM9 ELF size: text=630128 data=1424 bss=11340
```

## Test And Benchmark

Full reproducibility smoke test:

```sh
tools/repro/test_v06_repro.sh
```

The test builds two fresh output directories and byte-compares the resulting
ROMs. The current verified reproducible SHA256 is
`1fd396ead6954c83ff59e5698f3b91187d99ca6ae054b61e6c048fc445563211`.

Benchmark the 2008 release, rebuilt ROM, and improved ROM if present:

```sh
tools/repro/benchmark_roms.sh
```

The DeSmuME CLI used here does not expose an exact "run N frames and report FPS"
mode. The benchmark therefore records repeatable host-side emulator proxy metrics
over a fixed wall-clock duration, with raw emulator logs preserved for audit.
Use it for comparative regression detection, not as a direct Nintendo DS FPS
measurement.

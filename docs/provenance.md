# Provenance

## External Inputs

[`research/provenance/input-locks.csv`](../research/provenance/input-locks.csv)
records every external release archive, source archive, package, container base,
and emulator consumed by the research workflows.

Scripts verify file hashes before extraction. Container images are addressed by
digest. The legacy multiarch build uses the signed `20260709T000000Z` snapshot;
emulator packages use `20250721T000000Z`, which retains DeSmuME `0.9.11-4.1`.
The BlocksDS container's rolling package index is not synchronized; exact
archives from [`blocksds-packages.lock`](../tools/repro/blocksds-packages.lock)
are installed directly.

The BlocksDS 1.21.1 and uLibrary 1.14 packages are also preserved in the fork's
[reproducibility-inputs release](https://github.com/lpla/pocketphysics/releases/tag/reproducibility-inputs-v1)
because the rolling server removed the former and replaced the latter with
different bytes under the same filename. Fallbacks use the original SHA-256
values; they do not upgrade either dependency. The release includes the SDK
v1.21.1 source tree with recursively populated submodules, the uLibrary v1.14
source archive, and their upstream packaging recipes and license notices.
These source companions are not a claim that the packages themselves have
been rebuilt byte-identically.

The original GameBrew v0.6 ZIP is also mirrored as a GitHub Release asset on
this fork because GameBrew blocks some automated runner networks. Both URLs are
locked to `953c950217b14610039338918d4849f9ba5ab2ef44b9c92bb902296e5961cfb6`.
The mirror is binary archival input, not recovered source or a source-identical
build claim, and it is not stored in the Git tree.

The exact source build does not download either release URL. It downloads
the checksum-locked 2007 SDK, devkitARM r21, libnds source revision, zlib 1.2.3,
libpng 1.2.8, GCC/newlib sources, and historical producer revision listed in
the input lock. Remaining application/dependency
source is reconstructed from Git or tracked in
[`research/reconstruction/v06`](../research/reconstruction/v06/README.md).
The SDK/toolchain executables provide the bootstrap compiler, assembler,
linker, and packager. Their precompiled target startup objects and runtime
archives are removed before the final link and replaced by verified source
rebuilds. The [runtime recovery report](runtime-source-recovery.md) describes
that boundary and the independent object-level acceptance gate.

## Tracked Binary Inventory

The historical repository contains media, raw graphics/audio data, generated
objects, a source tarball, an old x86 converter, a loader blob, and archived
Flash files. They are preserved for historical integrity and classified
separately from recovered source inputs.

The exhaustive current-tree inventory is
[`tracked-binaries.csv`](../research/provenance/tracked-binaries.csv). It records
path, byte size, SHA-256, category, direct research use, and a note for every
detected binary file.

Regenerate and verify it with:

```sh
tools/repro/audit_tracked_binaries.py
tools/repro/audit_tracked_binaries.py --check
```

The audit fails if any binary appears under `tools/repro`.

The reconstruction corpus has a stricter independent audit:

```sh
tools/repro/audit_reconstruction_source.py
```

It rejects NUL-bearing files, object/archive/ROM extensions, binary includes,
and `.word` in recovered uppercase `.S` files. The accepted corpus contains text
source, patches, linker scripts, object-order metadata, and documentation. This
lexical test does not establish that `.long` directives are data or that all
executable bytes have high-level source provenance.

Notable preserved files:

| File | Status |
| --- | --- |
| `gfx/rgb2bin` | Historical 32-bit x86 ELF; not executed by research scripts |
| `ndsloader.bin` | Original loader blob; not used by current builds |
| `pocketphysics_src.tgz` | Original source archive; builds use audited git commits instead |
| `build/*.o` | Historical generated objects; never linked by research scripts |
| `press/*/*.swf` | Archived third-party webpage assets; never executed |
| `ppicon.bmp` | Historical media input used by ndstool packaging |

## Generated Research Artifacts

ROMs, ELF files, extracted release payloads, toolchains, downloaded archives,
container caches, and raw emulator logs are ignored under `research-artifacts`.
Generated outputs can be recreated. Downloaded source/toolchain archives are
cached build inputs whose hashes are locked separately; their presence in an
ignored directory does not make them generated source or evidence of recovery.

Compact evidence intended for review is tracked under `research/results`:

- Normalized result CSV.
- Metric summary CSV.
- Machine-checked assertion log.
- Runtime and source metadata.
- Portable ROM hash and byte-size manifest.

No ROM is committed in the evidence directories. The scripts rebuild each ROM
from its documented role and verify its hash. The historical benchmark begins
with the hash-identical source-built ARM9 and ARM7 outputs, not extracted
release payloads.

## Licenses

Pocket Physics source is GPLv3. Box2D, TinyXML, uLibrary, libnds, emulator, and
toolchain inputs retain their upstream licenses. A checksum lock identifies an
input; it does not relicense or vendor it.

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

## Tracked Binary Inventory

The historical repository contains media, raw graphics/audio data, generated
objects, a source tarball, an old x86 converter, a loader blob, and archived
Flash files. They are preserved for historical integrity, not silently treated
as recovered source.

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

Notable preserved files:

| File | Status |
| --- | --- |
| `gfx/rgb2bin` | Ancient 32-bit x86 ELF; never executed by research scripts |
| `ndsloader.bin` | Original loader blob; not used by current builds |
| `pocketphysics_src.tgz` | Original source archive; builds use audited git commits instead |
| `build/*.o` | Historical generated objects; never linked by research scripts |
| `press/*/*.swf` | Archived third-party webpage assets; never executed |
| `ppicon.bmp` | Historical media input used by ndstool packaging |

## Generated Research Artifacts

ROMs, ELF files, extracted release payloads, toolchains, downloaded archives,
container caches, and raw emulator logs are ignored under `.codex-artifacts`.
They can be recreated and are not source inputs.

Compact evidence intended for review is tracked under `research/results`:

- Normalized result CSV.
- Metric summary CSV.
- Machine-checked assertion log.
- Runtime and source metadata.
- Portable ROM hash and byte-size manifest.

No ROM is committed in the evidence directories. The scripts rebuild each ROM
from its documented role and verify its hash.

## Licenses

Pocket Physics source is GPLv3. Box2D, TinyXML, uLibrary, libnds, emulator, and
toolchain inputs retain their upstream licenses. A checksum lock identifies an
input; it does not relicense or vendor it.

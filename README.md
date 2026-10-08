# Pocket Physics

![Pocket Physics running on Nintendo DS](screenshots/pp.png)

Pocket Physics is a 2008 Nintendo DS drawing and physics sandbox by 0xtob. This
fork preserves the historical repository and adds a public, reproducible
research workflow for release archaeology, modern source builds, bug fixes, and
in-ROM performance measurement.

## Research Program

The archive separates the release reference, historical reconstruction,
toolchain modernization, and measured optimization. This keeps binary identity,
source provenance, behavioral equivalence, and performance as independently
testable claims.

| Track | Current result | SHA-256 or target |
| --- | --- | --- |
| Public v0.6 reference | Verified 2008 release ROM and extracted ARM payloads | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| Historical source reconstruction | Two clean source builds reproduce ARM7, ARM9, and the ROM byte for byte | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| Archival repack control | Historical ndstool reproduces the reference ROM from verified payloads | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| Modern source port | v0.6 C++ source on checksum-locked BlocksDS dependencies | `93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06` |
| Improved source port | Modern port with measured correctness and performance changes | `bdb7f37880b89e158230c070fef13ed58c53c55563c0710d1484d4bdd44b478d` |

The historical reconstruction is the canonical exact build. Every linked
implementation compiles from C/C++ or original low-level source assembly with
checksum-locked historical tools, without reading the release ROM or extracted
payloads. No linked executable transcription or post-link replacement remains.
One archive-only zlib member, `deflate`, still uses reconstructed assembly but
contributes no code to this ROM. Startup, newlib, libgcc, and libstdc++ are rebuilt
from locked upstream and historical producer sources; SDK executables remain
bootstrap tools. The archival repack is an independent packaging control.

[Library C-source recovery](docs/c-source-recovery.md) now replaces 26 historical
assembly objects with upstream C and small documented patches, while preserving
the release hashes. The report distinguishes archive coverage from code
actually linked into the ROM and inventories the remaining recovery work.
The [runtime recovery report](docs/runtime-source-recovery.md) records the
independent identity gates for 1,774 runtime archive-member instances and 12
startup/CRT objects.
The [libnds source-recovery report](docs/libnds-source-recovery.md) adds six
exact C objects, including the touchscreen implementation, and removes the
reconstructed dependency boundary from the ARM7 link.
The [TinyXML recovery report](docs/tinyxml-source-recovery.md) completes its
four C++ archive members by preserving the historical assertion filenames.
The [triangle recovery report](docs/triangle-source-recovery.md) removes an
entire Box2D compilation unit and its initializer from post-link replacement.
The [shape proxy report](docs/shape-source-recovery.md) recovers the release's
missing-proxy handling and removes another section replacement.
The [solver report](docs/contact-source-recovery.md) recovers both complete
contact and island units from upstream r131 and the preserved March 2008 patch.
The [UI report](docs/ui-source-recovery.md) removes two application replacements.
The [polygon report](docs/polygon-source-recovery.md) recovers the complete
30,768-byte C++ unit from preserved March 2008 forum source.
The [font report](docs/font-source-recovery.md) removes another replacement
by reconstructing compiler units without changing any historical C body.
The [ordinary ARM9 link report](docs/ordinary-arm9-source-recovery.md) removes
the final keyboard/FAT replacements: the unmodified link now matches the release.
The [PNG loader report](docs/png-loader-source-recovery.md) recovers the complete
three-function C unit and its combined image object.
The [alpha-conversion report](docs/alpha-source-recovery.md) recovers the last
linked reconstructed executable unit as C.
An [executable-byte inventory](docs/executable-source-coverage.md) attributes
99.99% of both processors' executable-section bytes to source-compiled
implementations; the remaining 80 bytes are linker-generated. Binary-constrained
reconstruction does not prove that every recovered expression is the author's
original source, and byte coverage is not a semantic-validation percentage.

## Reproduce

Requirements are Git with full history, Docker, Python 3.11 or later, `curl`, `unzip`, and
a host C++ compiler with AddressSanitizer support (GCC or Clang).
All downloaded files, container bases, package archives, and emulator releases
are pinned in [the input lock](research/provenance/input-locks.csv).

```sh
git clone https://github.com/lpla/pocketphysics.git
cd pocketphysics
tools/repro/test_all.sh
```

The full command audits the reconstruction corpus, performs two clean
byte-identical historical source builds, checks the independent repack control,
performs two clean modern and improved builds, and runs three in-ROM workloads
in melonDS. The emulator watchdog is host-side process control only; every
reported performance value is read from the ROM's cascaded ARM9 timers.
It also runs sanitized polygon API negative controls and shared ARM9 regression
cases separately from the primary performance specimens.

The primary benchmark calls the real touch, physics, and canvas operations in
a direct integration harness. It does not run the complete normal VBlank-driven
GUI/audio loop. Its frame/cadence results are harness-specific, not physical
input latency or whole-app hardware readiness; the
[protocol boundary](docs/benchmarking.md#runtime-boundary) and
[remaining runtime tests](docs/research-frontier.md) make that distinction explicit.

Individual entry points:

```sh
tools/repro/test_v06_exact.sh   # exact historical source build, twice
tools/repro/test_v06_repack_control.sh  # independent packaging control
tools/repro/test_v06_repro.sh   # modern source build, twice
tools/repro/test_v06_perf.sh    # improved source build, twice
tools/repro/test_v06_inrom.sh   # primary melonDS comparison
tools/repro/test_optimization_screening.sh  # melonDS profile attribution
```

DeSmuME remains available as a supplementary compatibility experiment by
setting `EMULATORS=desmume`; it is not used to accept or reject optimizations.

## Evidence

- [Reproducibility model and build identities](docs/reproducibility.md)
- [Historical reconstruction method and release address map](docs/reverse-engineering.md)
- [C-source recovery and remaining assembly](docs/c-source-recovery.md)
- [Historical runtime source rebuild](docs/runtime-source-recovery.md)
- [Historical libnds source recovery](docs/libnds-source-recovery.md)
- [Historical TinyXML source recovery](docs/tinyxml-source-recovery.md)
- [Historical triangle source recovery](docs/triangle-source-recovery.md)
- [Historical polygon source recovery](docs/polygon-source-recovery.md)
- [Historical font source recovery](docs/font-source-recovery.md)
- [Ordinary ARM9 link source recovery](docs/ordinary-arm9-source-recovery.md)
- [Historical PNG loader source recovery](docs/png-loader-source-recovery.md)
- [Historical alpha conversion source recovery](docs/alpha-source-recovery.md)
- [Complete linked-source validation](research/results/linked-source-complete/)
- [Executable-byte source coverage](docs/executable-source-coverage.md)
- [In-ROM benchmark protocol](docs/benchmarking.md)
- [Optimization and rejection study](docs/optimization-study.md)
- [Wider velocity-gate timing and operation coverage](research/results/velocity-gate/)
- [Polygon validation hardening and regression protocol](docs/polygon-validation-study.md)
- [Current guarded build: fresh three-role comparison](research/results/polygon-promotion/)
- [Picking-function ITCM experiment](docs/picking-itcm-study.md)
- [Open research and acceptance criteria](docs/research-frontier.md)
- [Physical Nintendo DS collection procedure](docs/real-hardware.md)
- [Tracked binary and external-input provenance](docs/provenance.md)
- [Published benchmark evidence](research/results/README.md)

Published datasets under [`research/results`](research/results/) bind every
measurement to a source revision, emulator configuration, ROM hash, workload
checksum, and machine-checked assertion set.

## License

Pocket Physics is distributed under the GNU General Public License v3. See
[`gpl-3.0.txt`](gpl-3.0.txt). Third-party inputs retain their own licenses and
are downloaded from the pinned sources recorded in the provenance files.

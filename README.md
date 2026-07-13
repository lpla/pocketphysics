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
| Improved source port | Modern port with measured correctness and performance changes | `cbfc4984533a427c1e724096750fb132be9f9f6ff2e30e8dc2fa1eae1c7a7c45` |

The source reconstruction is the canonical exact build. It starts from
checksum-locked historical tools and source, never from the release ROM or
extracted payloads. Recovered executable regions are reviewed ARM/Thumb
mnemonics with symbols and relocations, not embedded bytes or `.word` streams.
The archival repack remains only as an independent packaging control.

## Reproduce

Requirements are Git with full history, Docker, Python 3, `curl`, and `unzip`.
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
- [In-ROM benchmark protocol](docs/benchmarking.md)
- [Optimization and rejection study](docs/optimization-study.md)
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

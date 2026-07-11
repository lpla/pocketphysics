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
| Historical source reconstruction | Active reconstruction with the 2008 toolchain and source corpus | Target: byte-identical ARM7, ARM9, and final ROM |
| Archival repack control | Historical ndstool reproduces the reference ROM from verified payloads | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| Modern source port | v0.6 C++ source on checksum-locked BlocksDS dependencies | `93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06` |
| Improved source port | Modern port with measured correctness and performance changes | `851b0ce20f119f37c266ff269c44a5c6114ec48a7f3be081316cfcecd229fb83` |

The archival repack establishes the release oracle and packaging procedure; it
is not the endpoint of the historical-source investigation. A source
reconstruction is accepted only when maintainable source and documented build
inputs reproduce both processor payloads and the final ROM byte for byte.
Embedding release payloads as source data does not satisfy that criterion.

## Reproduce

Requirements are Git with full history, Docker, Python 3, `curl`, and `unzip`.
All downloaded files, container bases, package archives, and emulator releases
are pinned in [the input lock](research/provenance/input-locks.csv).

```sh
git clone https://github.com/lpla/pocketphysics.git
cd pocketphysics
tools/repro/test_all.sh
```

The full command performs source-transform tests, two clean archival repacks,
two clean modern builds, two clean improved builds, and three in-ROM workload
runs in melonDS. The emulator watchdog is host-side process control only; every
reported performance value is read from the ROM's cascaded ARM9 hardware
timers.

Individual entry points:

```sh
tools/repro/test_v06_exact.sh   # archival repack control, twice
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

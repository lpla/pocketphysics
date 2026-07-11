# Pocket Physics

![Pocket Physics running on Nintendo DS](screenshots/pp.png)

Pocket Physics is a 2008 Nintendo DS drawing and physics sandbox by 0xtob. This
fork preserves the historical repository and adds a public, reproducible
research workflow for release archaeology, modern source builds, bug fixes, and
in-ROM performance measurement.

## Research Status

Three roles are kept deliberately separate:

| Role | What it is | SHA-256 |
| --- | --- | --- |
| 2008 release | Verified public ARM payloads repacked with historical ndstool | `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64` |
| Modern | v0.6 C++ source ported to checksum-locked BlocksDS dependencies | `1545483fa3d0b1c1dd45909e25805b294e4b8a75f1adb2220fc15dd421a6a25a` |
| Improved | Modern port plus measured fixes, restored DS hardware math, selected Box2D backports, physics ITCM, batched rendering, and LTO | `f0da3c30421246944e69abcbeaa42edf47d04f4404dc119ea69e88862265a3b4` |

The first row is byte-identical to the public ROM, but it is **not a source
recompilation**. The original release translation units and complete library
build inputs have not been recovered. Earlier generated `.word` transcriptions
were binary payloads disguised as assembly and have been removed. The exact
claim is now limited to a verified archival repack; the maintainable source
reproduction is the modern row.

## Reproduce

Requirements are Git with full history, Docker, Python 3, `curl`, and `unzip`.
All downloaded files, container bases, package archives, and emulator releases
are pinned in [the input lock](research/provenance/input-locks.csv).

```sh
git clone https://github.com/lpla/pocketphysics.git
cd pocketphysics
tools/repro/test_all.sh
```

The full command performs source-transform tests, two clean historical repacks,
two clean modern builds, two clean improved builds, and three in-ROM workload
runs in both DeSmuME and melonDS. The emulator watchdog is host-side process
control only; every reported performance value is read from the ROM's cascaded
ARM9 hardware timers.

Individual entry points:

```sh
tools/repro/test_v06_exact.sh   # byte-identical archival repack, twice
tools/repro/test_v06_repro.sh   # modern source build, twice
tools/repro/test_v06_perf.sh    # improved source build, twice
tools/repro/test_v06_inrom.sh   # both emulators, three repetitions each
tools/repro/test_optimization_screening.sh  # all 13 optimization profiles
```

## Evidence

- [Reproducibility model and exact limitations](docs/reproducibility.md)
- [Reverse-engineering scope and release address map](docs/reverse-engineering.md)
- [In-ROM benchmark protocol](docs/benchmarking.md)
- [Optimization and rejection study](docs/optimization-study.md)
- [Physical Nintendo DS collection procedure](docs/real-hardware.md)
- [Tracked binary and external-input provenance](docs/provenance.md)
- [Published benchmark evidence](research/results/README.md)

No result link points into `.codex-artifacts`; that directory is only a local,
ignored build cache. Reviewable CSVs, metadata, assertions, and summaries live
under [`research/`](research/).

## License

Pocket Physics is distributed under the GNU General Public License v3. See
[`gpl-3.0.txt`](gpl-3.0.txt). Third-party inputs retain their own licenses and
are downloaded from the pinned sources recorded in the provenance files.

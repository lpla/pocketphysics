# Reverse Engineering

## Scope

The reverse-engineering work has two purposes:

1. Establish the identity and layout of the public 2008 v0.6 release.
2. Instrument that release without pretending its original C++ was recovered.

The exact release ROM is a research input, not a tracked source substitute.

## Release Identity

The verified source archive and payload hashes are recorded in
[`input-locks.csv`](../research/provenance/input-locks.csv). The release ROM is:

```text
SHA-256  9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64
Size     894016 bytes
ARM9     0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89
ARM7     b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec
```

[`build_v06_exact.sh`](../tools/repro/build_v06_exact.sh) extracts these two
payloads and repacks them with historical ndstool. Matching the final ROM proves
the archive/container reconstruction, header inputs, and packaging order. It
does not prove recompilation from original source.

## Removed False Source

Earlier research commits generated `recovered_arm9.S` and `recovered_arm7.S` as
long sequences of `.word` directives copied directly from the release payloads.
Those files were accepted by an assembler, but they had no recovered functions,
types, control flow, or maintainable semantics. They were binary
transliterations, not source recovery.

They and their generator have been removed from `master`. Git history preserves
the audit trail, while the current documentation retracts the source-build
claim. No opaque binary is tracked under `tools/repro`; this is enforced by
[`audit_tracked_binaries.py`](../tools/repro/audit_tracked_binaries.py).

## Historical Instrumentation

The historical benchmark starts from the verified release payload and adds a
source-built overlay:

- Overlay source:
  [`exact_overlay/benchmark_overlay.cpp`](../tools/repro/exact_overlay/benchmark_overlay.cpp).
- no$gba debug transport:
  [`exact_overlay/nocash_debug.S`](../tools/repro/exact_overlay/nocash_debug.S).
- Link address: `0x02300000`.
- ARM9 load address: `0x02000000`.
- Splash-call patch: `0x0200451c`, guarded by preimage `fdf748fd`.
- Post-`setupGui` hook: `0x020045b8`, guarded by preimage `684a0223`.

[`instrument_exact_arm9.py`](../tools/repro/instrument_exact_arm9.py) refuses an
unknown ARM9 hash, a changed patch preimage, an overlapping overlay, an invalid
Thumb branch, or an out-of-range target. Its branch encoder has forward,
backward, alignment, and range unit tests.

The overlay calls audited release functions by address. Those targets are named
at the top of the source and published in
[`v06-address-map.csv`](../research/reverse-engineering/v06-address-map.csv).
Validation is behavioral: the overlay creates the expected scene through the
real touch dispatcher, exercises real Box2D and rendering functions, and emits
stable topology/state hashes.

The benchmark ROM is intentionally not byte-identical to the release. It is a
derived experimental specimen whose base hash and two modifications are fully
specified.

## What Is Source

The maintainable v0.6 source reproduction comes from commits `e9b621e` and
`3e538e0`, then receives explicit, reviewable transformations. All application,
benchmark, compatibility, Box2D, and build logic under `tools/repro` is text
source.

Third-party source is downloaded by hash. Generated object files, ELF files,
ARM payloads, and ROMs remain ignored build outputs.

## What Remains Unknown

A genuine byte-identical source compilation would require, at minimum:

- The exact original C/C++ translation units used for the public ROM.
- Exact Box2D, TinyXML, uLibrary, libnds, and ARM7 source snapshots.
- Original Makefiles, compiler flags, object order, linker scripts, generated
  asset order, and post-link tooling.
- Evidence that reconstructed code produces the release ARM9 and ARM7 payload
  hashes before packaging.

The repository does not currently possess that evidence. Future work may use
disassembly, function matching, and decompilation, but every recovered function
must be reviewed as code; bulk `.word` payloads will not satisfy the claim.

## Claim Vocabulary

- **Byte-identical release repack:** achieved and tested twice.
- **Byte-identical build from original source:** not achieved.
- **Maintainable modern source build:** achieved and byte-reproducible.
- **Historically instrumented ROM:** achieved as an explicitly derived artifact.
- **Behavioral equivalence:** bounded by the benchmark's public invariants and
  checksums, not asserted for every possible user interaction.

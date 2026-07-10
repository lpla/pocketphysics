# Real Hardware

Emulator agreement is useful but does not prove Nintendo DS memory, cache, bus,
flashcart, and firmware behavior. The benchmark ROMs therefore write the same
in-ROM records to FAT for physical collection.

## Build The Specimens

```sh
tools/repro/build_v06_exact_benchmark.sh
BUILD_PROFILE=bench-modern \
  OUT="$PWD/.codex-artifacts/build/bench-modern" \
  tools/repro/build_v06_blocksds.sh
BUILD_PROFILE=bench-improved \
  OUT="$PWD/.codex-artifacts/build/bench-improved" \
  tools/repro/build_v06_blocksds.sh
```

The three ROMs are generated locally under `.codex-artifacts/build`. Record their
SHA-256 hashes before copying them to media.

## Collection Protocol

1. Use one console, charger state, flashcart, microSD, flashcart firmware, and
   launch method for all builds.
2. Disable flashcart CPU boosts, cheats, save-state hooks, and per-ROM patches
   other than required DLDI access.
3. Power-cycle before each run.
4. Run historical, modern, and improved in rotating order to reduce order bias.
5. Wait for the benchmark to finish writing, then power off before removing
   storage.
6. Preserve at least three raw CSV files per role without editing them.
7. Record console model, region, firmware, flashcart, microSD, and any launch
   patches in the ingestion metadata.

Output filenames are:

```text
ppbench-historical.csv
ppbench-bench-modern.csv
ppbench-bench-improved.csv
```

Rename each collected copy by role and run number before launching the next
specimen so it is not overwritten.

## Normalize And Validate

```sh
tools/repro/ingest_hardware_results.py \
  --rom bench-historical=.codex-artifacts/build/bench-historical/pocketphysics-bench-historical.nds \
  --rom bench-modern=.codex-artifacts/build/bench-modern/pocketphysics-v0.6-blocksds.nds \
  --rom bench-improved=.codex-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds \
  --csv bench-historical=hardware/historical.1.csv \
  --csv bench-historical=hardware/historical.2.csv \
  --csv bench-historical=hardware/historical.3.csv \
  --csv bench-modern=hardware/modern.1.csv \
  --csv bench-modern=hardware/modern.2.csv \
  --csv bench-modern=hardware/modern.3.csv \
  --csv bench-improved=hardware/improved.1.csv \
  --csv bench-improved=hardware/improved.2.csv \
  --csv bench-improved=hardware/improved.3.csv \
  --output research/results/hardware-console-id \
  --hardware-model "Nintendo DS Lite USG-001" \
  --flashcart "model and firmware" \
  --firmware "console/launcher details"
```

The tool hashes every ROM and raw CSV, archives the raw files, assigns run
indexes, generates normalized results and summaries, and runs the same
correctness/leak/performance assertions used for emulators. Its default physical
timing-spread limit is 5%; use a different value only with a documented reason.

## Publication Rule

A hardware result directory should be committed unchanged with its metadata and
raw files. Do not replace emulator evidence or average emulator and hardware
ticks together. Report each console/flashcart configuration as its own dataset.

No physical Nintendo DS dataset is currently claimed in this repository. The
absence is explicit so emulator results cannot be mistaken for hardware proof.

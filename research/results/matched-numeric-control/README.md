# Matching Numeric-Mode Control

Source/protocol checkpoint `2fabcb8f34ac47b222a6a6786ce2b0dfc396a8f8`.
The newly rebuilt auxiliary control keeps Thumb/O3 and compatibility behavior,
but selects fixed 16.16 DS hardware math. Independent complete ROM/ELF builds
match; see [independent-builds.csv](independent-builds.csv).
The three pre-existing instrumented roles retain their published byte identities
and are re-executed here. Their uninstrumented source-build identities were also
revalidated independently; these are not newly rebuilt historical overlays.

Twelve isolated melonDS runs, three per role, repeat the direct integration
workload and timing records exactly. See [summary.csv](summary.csv),
[assertions.txt](assertions.txt), [roms.txt](roms.txt), and [metadata.json](metadata.json).

| Role | Physics Mean Ticks | Direct Sequence Mean Ticks | Hit-Test Heap Growth |
| --- | ---: | ---: | ---: |
| Historical | 278893 | 554829 | 14400 |
| Modern floating-point | 584579 | 904349 | 14400 |
| Modern fixed-point DS control | 197213 | 556031 | 14400 |
| Improved checkpoint | 110987 | 556655 | 0 |

Against the matched numeric control, this improved checkpoint's physics mean
is 43.7% lower, not the 81.0% floating-control comparison. Its direct sequence
mean is 0.11% higher, so this is not a complete-frame speedup claim. Numerical
trajectory differences and the later threshold correction further constrain
interpretation. These are direct-harness counters, not normal-loop or console
latency. The fixed-point control intentionally retains the hit-test leak.

The uninstrumented auxiliary ROM is 821248 bytes with SHA-256
`111fef2ef6d2b9b413cd56ee4d70d780631ea4ce2f821ae435711c194388bcac`;
the instrumented control is identified separately in the manifest.

```sh
git checkout 2fabcb8f34ac47b222a6a6786ce2b0dfc396a8f8
tools/repro/test_modern_fixed_ds.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The command rebuilds all four instrumented specimens; the preserved dataset
reuses the previously byte-identified three roles and freshly rebuilds the new
control. Their roles and output identities are distinguished deliberately.

# C-Source Recovery Validation

## Fresh Three-Build Measurement

[The melonDS dataset](melonds/) was generated from clean source revision
`3688f87228446b4c4ba13986645f240baee13504`, after recovering 21 historical
zlib/libpng archive members to C. All three instrumented ROMs were rebuilt.
Each executes the 225-touch, 27-object, 600-hit-test, 240-frame workload three
times, producing 207 normalized metric rows.

Both `results.csv` and `roms.txt` are byte-identical to the
[previous three-build dataset](../melonds-final/). This establishes that the
source-recovery substitutions preserve the benchmark binaries and recorded
behavior/timings. It is not a new performance gain. The Docker image identity
is retained in the new metadata even though the pinned emulator and all
measurement rows match.

```sh
REPEATS=3 tools/repro/test_v06_inrom.sh
cmp research/results/melonds-final/results.csv \
    research/results/c-source-recovery/melonds/results.csv
cmp research/results/melonds-final/roms.txt \
    research/results/c-source-recovery/melonds/roms.txt
```

The measured run used cached, hash-verified SDK packages. A separate cold-cache
CI run exposed a removed upstream BlocksDS 1.21.1 URL after successfully
completing both exact historical builds. A subsequent empty-cache local test
also found changed uLibrary 1.14 contents at its original URL. The package
preservation fallback changes download availability, not package content or
the measured ROMs.

With the fallback applied, the build was repeated with a new, empty package
cache. It rejected the changed upstream uLibrary bytes, retrieved both
preserved packages, and produced the expected uninstrumented modern ROM hash
`93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06`.
The [download/hash log excerpt](cold-package-fetch.txt) records these decisions.
This test emptied the package cache, not the source or Docker image caches.
The seven local downloader tests also cover invalid mirrors, corrupt caches,
and failure without a usable fallback. All 32 unit tests passed.

```sh
BLOCKSDS_PACKAGE_CACHE="$PWD/research-artifacts/test/new-package-cache" \
OUT="$PWD/research-artifacts/test/cold-modern" \
    tools/repro/build_v06_blocksds.sh
```

Use a previously nonexistent package-cache directory for this check.

## Stricter Screening Reanalysis

The existing 17-profile screen was reanalyzed, not rerun, with the new
cross-profile correctness/equivalence gates. The
[new assertion log](screening-revalidation/assertions.txt) records zero measured
heap growth and successful ROM correctness flags for every profile, plus
matching sampled state/render work against `ds-arm` for all profiles except
the explicitly excluded software-math control. The timing summary is unchanged.

| Input | Identity |
| --- | --- |
| Original measurement revision | `01bbe06e2d8b9ae8a49d0385a704c273cf13e59d` |
| Analyzer revision | `3688f87228446b4c4ba13986645f240baee13504` |
| Analyzer SHA-256 | `db15ded97d826e4edcb47addeb38050b9863d119936331236ba7da99c332e4ee` |
| Original `results.csv` SHA-256 | `366af61e521fe27fbc7bc9f9d6700bff13004a24e45d6da4f84ff35b8bb34321` |

```sh
mkdir -p research-artifacts/screening-revalidation
python3 tools/repro/analyze_inrom.py \
    research/results/optimization-screening/melonds/results.csv \
    research-artifacts/screening-revalidation/summary.csv \
    research-artifacts/screening-revalidation/assertions.txt \
    --expected-repeats 2 --require-correctness --equivalent-to ds-arm \
    --different-state-label software-control
```

These gates test the recorded scene and sampled state, not arbitrary sketches
or complete cross-role physics equivalence. See the
[measurement limits](../../../docs/benchmarking.md) and
[source-recovery report](../../../docs/c-source-recovery.md). No physical
Nintendo DS measurements are included.

## Additional `inftrees` Recovery

After the 21-member dataset above, `inftrees` was recovered as the 22nd C
member. Two further clean historical builds passed every object and payload
identity gate and byte-compared both processor ELF files and the packaged ROM.
The [identity log excerpt](inftrees-exact.txt) contains both sets of hashes.
The final ROM remains `9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.

```sh
OUT="$PWD/research-artifacts/test/inftrees-c-recovery" \
    tools/repro/test_v06_exact.sh
```

The accepted object includes 1,440 executable-section bytes and 300 read-only
data bytes. All are compiled from upstream C with the documented declaration
order and per-member compiler flags. No post-compilation instruction edits are
used. This additional recovery does not relabel the earlier nine-run dataset
as a measurement of a later source revision.

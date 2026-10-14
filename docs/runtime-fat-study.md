# Emulated DLDI and Runtime Log Readback

The normal-loop protocol can run with melonDS's DLDI SD-card model enabled.
This is a separate storage configuration; the ordinary timing baseline keeps
DLDI disabled. Each repetition creates an independent FAT image, with folder
synchronization disabled and a fully seeded configuration.

```sh
REPEATS=3 tools/repro/test_runtime_fat.sh
```

The driver builds the ordinary `runtime-improved` specimen unless `CONTROL_ROM`
supplies an already identified copy. It uses the pinned emulator, retains input
and final TOML files, raw debug streams, exit statuses, and the generated image.
The watchdog is only a completion bound. It is not a timing measurement.

The ARM9 application must report FAT available, complete all replay and
arithmetic gates, and report zero log-write errors. A bounded
[FAT16 reader](../tools/repro/read_emulated_fat.py) extracts
`pp-runtime-runtime-improved.log` from the generated image. The reader checks
partition/volume bounds, long-filename checksums, cluster-chain integrity,
declared file length, and payload truncation. Unused trailing bytes of a sparse
image need not be materialized.

[Readback validation](../tools/repro/analyze_runtime_fat.py) requires every
metric and body/frame/IRQ/pixel record to match the emulator debug stream.
It then applies the full runtime validator and requires repeatable metrics,
traces, and identical extracted file hashes. An accepted timeout status alone
does not establish completion or valid storage output.

The FAT image also contains a ROM copy injected by melonDS for homebrew
compatibility. That copy is an emulator-generated validation artifact, not an
application build input. The independently source-built input ROM is hashed
separately. Preserve raw images and configuration/hash manifests with results.

This demonstrates the application's native runtime logger writing and reading
through the emulated DLDI/FAT stack. It does not exercise GUI sketch
serialization, thumbnails, overwrite/cancel callbacks, damaged XML, allocation
failures, or a physical flashcart. Those remain separate storage acceptance work.

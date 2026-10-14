# Native Runtime Logging Through Emulated FAT

Three independent melonDS DLDI/FAT runs were produced from clean protocol
checkpoint `14c2569ce75c21223b68bf9a8969a388f5a1e0a1`. The application producer
is unchanged from `f9bbb70b8583d00f1fd8a48505d7148bd66a2f41`; the protocol
checkpoint adds the isolated driver, bounded FAT16 reader, and validators.

The source-built runtime ROM is 785,408 bytes, SHA-256
`933d0b399b3dbca208742ce9ddec0bb3738ca63fd4eacfebf160700f54566a8c`.
Every run completes all runtime gates, reports FAT available and zero log-write
errors, and writes a 428,459-byte native log. Each extracted payload has SHA-256
`b84634ff6e010de2461208be8d5facee543f591b532fc7e99b104c28834ab157`.
All 36 metrics and every body, frame, IRQ, pixel, and final record agree with
the corresponding emulator debug stream. Repeated timing and raw traces agree.

The files preserve normalized results, raw streams, separately seeded input
and final TOML, exit statuses, disk images, extracted application logs, display
captures, and [payload/image hashes](fat-readback.json). Individual image hashes
differ because the emulated filesystem includes runtime metadata; payload
identity is tested separately. The emulator-injected ROM in each disk is a
validation artifact and never an application build input.

Reproduce with the [driver and acceptance protocol](../../../docs/runtime-fat-study.md).
The 45-second watchdog bounds completion; it is not a latency measurement.

This validates native ARM9 log writing through emulated DLDI/FAT and independent
host readback. GUI sketch save/load, XML serialization, thumbnails,
overwrite/cancel interaction, failure feedback, and physical flashcart storage
remain separate acceptance work. Ordinary DLDI-disabled timing datasets remain
immutable.

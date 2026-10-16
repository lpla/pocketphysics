# World XML Save Regression and Port Replay

Application checkpoint `e04656ace94017d97ad591bffdebb9cfebf391dc` corrects
full-length author termination, save-side pin ID initialization and bounds,
and file preservation on unresolved endpoints or ID-table allocation failure.
The [study and scope](../../../docs/world-save-study.md) describe the correction
and its remaining loader, GUI, FAT, and physical acceptance work.

Both host matrices contain 534 cases: 531 guarded cases pass; three immutable
pre-correction controls require the specific stack/heap-buffer-overflow
diagnostic. The host directories preserve generated source, compiler logs,
and `cases.jsonl`: each line retains arguments, exit status, fixture hash,
raw stdout/stderr, and the resulting XML or unchanged sentinel file with its
byte length and SHA-256. This packs the complete per-case outputs without
introducing hundreds of separate small files.

The application save bodies and fixtures were tested before committing the
unchanged source. Fixture hashes bind those executions to the committed source.
The Linux runner's case-sensitive path correction affects only source discovery;
it does not change generated C++ or application code.

[Independent builds](independent-builds.csv) match the complete ROM and ELF in
three profile pairs. The selected release is 814,080 bytes with SHA-256
`6403a17f8c789759a6b571556e5c21285401fe03b097e425a7a0faa7f1120e38`.
The direct specimen is
`881bf2c33b96e1e87243c9ea49376ec8f111cdfeb7f34d77fb7cf6fb05f9f1ab`;
the runtime specimen is
`ce7c2ed0a38d61d3b9c288f9a9ae1d5fb80894eec308da742610b5796531ecdd`.

The clean-source [direct comparison](direct/) repeats all four roles three
times. Historical and both modernization controls retain their prior ROMs and
records. The improved specimen has physics mean 111,011 ARM9 timer ticks,
hit-test mean 1,621, and complete-frame mean 556,771, with zero tolerant cadence
overruns and zero hit-test heap growth. The direct workload does not open save
dialogs or serialize XML. Small timing changes accompany the changed binary
layout; they do not measure a faster save operation.

The clean-source [normal-loop replay](runtime/) also repeats three times,
with 252 physics steps, zero unconsumed input samples, foreground physics mean
56,304 ticks, VBlank-handler mean 15,216, and sample-age mean 30,980.
All arithmetic, input, lifecycle, drawing, and repeated-state gates pass.
[All 3,528 recorded body states](trajectory-comparison.json) match the previous
improved checkpoint when aligned by physics step and object index. Hidden
manifolds and joint parameters are outside that comparison.

No full GUI sketch round trip or physical-console measurement is inferred.
Older datasets and their source/binary identities remain immutable.

# Historical UI Source Recovery

## GUI Setup

The release places the stop button at Y=152 and the play/pause buttons at
Y=172. The available source used 151 and 171 respectively. These three
coordinates account for three differing Thumb immediate bytes in the
1,368-byte `setupGui` region. The
[source patch](../research/reconstruction/v06/arm9/ui-source.patch) restores
the release coordinates in C++, removing the entire region replacement.

The complete `main.o` has 10,480 executable-section bytes and 11,140 allocated
bytes. Its [object identity](../research/reconstruction/v06/arm9/ui-object-identities.json)
is checked before the processor payload hash gate. It is release-constrained,
not an independently preserved original object.

## Thumbnail Rendering

The existing historical `application.patch` already reproduces all 204 bytes
of `PPLoadDialog::drawPolaroid`. Its redundant ARM9 replacement is removed
without further changes to the method. The complete `loaddialog.o` contains
3,904 executable-section bytes and 4,176 allocated bytes and is checked in the
same object manifest.

## Verification

Together these recoveries add 1,572 bytes to source-compiled application
coverage. An isolated full relink reproduces the canonical ARM9 payload
without either region. The public acceptance command additionally builds all
components twice, verifies processor/ROM hashes, and compares ELF files and
source-provenance reports:

```sh
tools/repro/test_v06_exact.sh
```

Only the historical reconstruction uses the coordinate patch. No performance
gain or modern UI redesign is claimed: the resulting 2008 ROM is unchanged.

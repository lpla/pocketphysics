# Dialog Fixture Portability

The same 284 cases pass on macOS with Apple Clang 21 and Linux with GCC 13.3:
276 guarded application cases succeed, and eight deliberately broken controls
produce the required buffer, ownership, or workflow diagnostic. Generated
fixtures, compiler logs, every case's raw streams, status, and fixture hashes
are retained for both systems. Case definitions and fixture hashes agree.
The four buffer controls exit with Linux status 1 or macOS SIGABRT; both must
report the specific heap-buffer-overflow diagnostic. Explicit ownership and
workflow failure statuses agree across hosts.

This supplements the immutable [dialog-correction dataset](../storage-dialogs/).
The application source remains checkpoint `f9bbb70`; fixture revision
`29411f6d1a45be960dfbee98e641e037c0f8cc91` changes only cleanup after the
ownership assertion fails. The executions preceded committing that unchanged
fixture; the [manifest](metadata.json) records this and its Linux image identity.

Linux LeakSanitizer previously replaced the deliberate status 54 at process exit
with its own leak status 1. The fixture now diagnoses the ownership failure,
then releases its tracked leftovers before returning 54. Guarded source must
release everything before the assertion. Leak checking remains enabled.
This repairs test classification without changing application ROM code.

The [method-body scope and remaining acceptance work](../../../docs/storage-dialog-study.md)
apply unchanged. These cases do not validate complete GUI sketch serialization
or physical FAT storage.

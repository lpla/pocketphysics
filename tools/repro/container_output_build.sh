#!/usr/bin/env bash
# Return generated files to the invoking host user, including failed builds.
set -euo pipefail

OUT="${1:?usage: container_output_build.sh OUT_DIR COMMAND [ARG...]}"
shift
PP_BUILD_UID="${PP_BUILD_UID:-$(stat -c %u "$OUT")}"
PP_BUILD_GID="${PP_BUILD_GID:-$(stat -c %g "$OUT")}"
if [[ ! "$PP_BUILD_UID" =~ ^[0-9]+$ || ! "$PP_BUILD_GID" =~ ^[0-9]+$ ]]; then
    echo "Build output ownership must use numeric uid/gid" >&2
    exit 1
fi

finish() {
    local status="$?"
    trap - EXIT
    if ! chown -R "$PP_BUILD_UID:$PP_BUILD_GID" "$OUT"; then
        echo "Could not return build output ownership: $OUT" >&2
        if [[ "$status" == 0 ]]; then status=1; fi
    fi
    exit "$status"
}
trap finish EXIT
"$@"

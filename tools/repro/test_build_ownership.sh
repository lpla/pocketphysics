#!/usr/bin/env bash
# Use a Linux volume so Docker Desktop host-filesystem mapping cannot mask this.
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
IMAGE="${BLOCKSDS_IMAGE:-skylyrac/blocksds@sha256:67f6bf754734018e2f6e97b35f6a83f818a4690aa1c2abe86a07042ce9c36ce8}"
VOLUME="pocketphysics-ownership-test-$(date +%s)-$$"
docker volume create "$VOLUME" > /dev/null
trap 'docker volume rm "$VOLUME" > /dev/null' EXIT

for expected in 0 23; do
    set +e
    docker run --rm -v "$VOLUME":/scratch -v "$ROOT/tools/repro":/repro:ro \
        -e PP_BUILD_UID=1001 -e PP_BUILD_GID=1001 -e EXPECTED_STATUS="$expected" \
        "$IMAGE" bash -c '
            chown 1001:1001 /scratch
            mkdir -p /scratch/build
            bash /repro/container_output_build.sh /scratch/build bash -c '\''
                mkdir -p /scratch/build/obj
                printf evidence > /scratch/build/obj/output
                exit "$EXPECTED_STATUS"
            '\''
        '
    actual="$?"
    set -e
    if [[ "$actual" != "$expected" ]]; then
        echo "Build wrapper changed exit status: expected $expected, got $actual" >&2
        exit 1
    fi
    docker run --rm --user 1001:1001 -v "$VOLUME":/scratch "$IMAGE" bash -c '
        test "$(stat -c %u:%g /scratch/build/obj/output)" = 1001:1001
        test "$(cat /scratch/build/obj/output)" = evidence
        rm -rf /scratch/build
        mkdir -p /scratch/build/obj
        printf rebuilt > /scratch/build/obj/output
        rm -rf /scratch/build
    '
done
echo "Linux build-output ownership and rebuild cleanup pass for success and failure exits."

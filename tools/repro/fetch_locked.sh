#!/usr/bin/env bash
# Sourced by build scripts; accept only the expected bytes from either location.

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

fetch() {
    local url="$1"
    local dest="$2"
    local expected="$3"
    local mirror="${4:-}"
    local candidate actual

    mkdir -p "$(dirname "$dest")"
    if [ -f "$dest" ] && [ "$(sha256_file "$dest")" = "$expected" ]; then
        return 0
    fi

    for candidate in "$url" "$mirror"; do
        [ -n "$candidate" ] || continue
        rm -f "$dest"
        if [ "$candidate" = "$mirror" ]; then
            echo "Trying checksum-identical preservation mirror: $mirror"
        fi
        if curl -L --fail --retry 3 --retry-delay 2 "$candidate" -o "$dest"; then
            actual="$(sha256_file "$dest")"
            if [ "$actual" = "$expected" ]; then
                return 0
            fi
            printf 'Rejected download: %s\nexpected: %s\nactual:   %s\n' \
                "$candidate" "$expected" "$actual" >&2
        fi
    done
    rm -f "$dest"
    echo "No download matched the locked SHA-256 for $dest" >&2
    return 1
}

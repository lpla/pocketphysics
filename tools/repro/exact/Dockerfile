FROM debian:bookworm-slim@sha256:0104b334637a5f19aa9c983a91b54c89887c0984081f2068983107a6f6c21eeb

RUN rm -f /etc/apt/sources.list.d/debian.sources \
    && printf '%s\n' \
        'deb [check-valid-until=no] http://snapshot.debian.org/archive/debian/20260709T000000Z bookworm main' \
        'deb [check-valid-until=no] http://snapshot.debian.org/archive/debian-security/20260709T000000Z bookworm-security main' \
        > /etc/apt/sources.list \
    && dpkg --add-architecture i386 \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y --no-install-recommends \
        bzip2 \
        binutils-arm-none-eabi \
        ca-certificates \
        gzip \
        libc6:i386 \
        libncurses6:i386 \
        libstdc++6:i386 \
        make \
        patch \
        python3 \
        zlib1g:i386 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

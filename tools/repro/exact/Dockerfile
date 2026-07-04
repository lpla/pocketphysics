FROM debian:bookworm-slim@sha256:0104b334637a5f19aa9c983a91b54c89887c0984081f2068983107a6f6c21eeb

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        bzip2 \
        binutils-arm-none-eabi \
        ca-certificates \
        libc6:i386 \
        libncurses6:i386 \
        libstdc++6:i386 \
        zlib1g:i386 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

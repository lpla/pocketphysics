FROM debian:bookworm-slim@sha256:0104b334637a5f19aa9c983a91b54c89887c0984081f2068983107a6f6c21eeb

ARG MELONDS_URL=https://github.com/melonDS-emu/melonDS/releases/download/1.1/melonDS-1.1-appimage-x86_64.zip
ARG MELONDS_SHA256=bf377420a2e95f2cd2cdda17d5372b51c2534f858b038db9ec6d129554875124

RUN rm -f /etc/apt/sources.list.d/debian.sources \
    && printf '%s\n' \
        'deb [check-valid-until=no] http://snapshot.debian.org/archive/debian/20250721T000000Z bookworm main' \
        'deb [check-valid-until=no] http://snapshot.debian.org/archive/debian-security/20250721T000000Z bookworm-security main' \
        > /etc/apt/sources.list \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ca-certificates \
        coreutils \
        curl \
        libasound2 \
        libdbus-1-3 \
        libegl1 \
        libfontconfig1 \
        libgl1 \
        libharfbuzz0b \
        libopengl0 \
        libpulse0 \
        libwayland-client0 \
        libx11-6 \
        libxcb1 \
        libxext6 \
        libxi6 \
        libxkbcommon-x11-0 \
        libxrender1 \
        unzip \
        xauth \
        xvfb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp/melonds
RUN curl -L --fail --retry 3 --retry-delay 2 "$MELONDS_URL" -o melonds.zip \
    && echo "$MELONDS_SHA256  melonds.zip" | sha256sum -c - \
    && unzip -q melonds.zip \
    && chmod +x melonDS-x86_64.AppImage \
    && ./melonDS-x86_64.AppImage --appimage-extract >/dev/null \
    && mv squashfs-root /opt/melonds \
    && rm -rf /tmp/melonds

RUN mkdir -p /opt/melonds/usr/bin/portable \
    && printf '%s\n' \
        'LimitFPS = false' \
        '[Emu]' \
        'ConsoleType = 0' \
        'DirectBoot = true' \
        'ExternalBIOSEnable = false' \
        '[JIT]' \
        'Enable = false' \
        '[DLDI]' \
        'Enable = false' \
        > /opt/melonds/usr/bin/portable/melonDS.toml

ENV LIBGL_ALWAYS_SOFTWARE=1 \
    QT_QPA_PLATFORM=xcb \
    SDL_AUDIODRIVER=dummy

ENTRYPOINT ["xvfb-run", "-a", "--", "stdbuf", "-oL", "-eL", "/opt/melonds/AppRun"]

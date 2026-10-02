#!/usr/bin/env bash
# Rebuild the target libraries used by the historical ARM7/ARM9 links.
set -euo pipefail

INPUTS="$1"
RUNTIME="$2"
SDK="$3"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
export PATH="$SDK/bin:$PATH"
JOBS="${JOBS:-4}"
SOURCE="$RUNTIME/source"
TARGET="$RUNTIME/target"
mkdir -p "$SOURCE/producer" "$RUNTIME/newlib" "$RUNTIME/gcc" "$TARGET"
tar -xzf "$INPUTS/newlib-1.15.0.tar.gz" -C "$SOURCE"
tar -xjf "$INPUTS/gcc-core-4.1.2.tar.bz2" -C "$SOURCE"
tar -xjf "$INPUTS/gcc-g++-4.1.2.tar.bz2" -C "$SOURCE"
tar -xzf "$INPUTS/buildscripts-source.tar.gz" -C "$SOURCE/producer" --strip-components=1
patch --fuzz=0 -d "$SOURCE/newlib-1.15.0" -p1 \
    < "$SOURCE/producer/dkarm-eabi/patches/newlib-1.15.0.patch"
patch --fuzz=0 -d "$SOURCE/gcc-4.1.2" -p1 \
    < "$SOURCE/producer/dkarm-eabi/patches/gcc-4.1.2.patch"

printf '%s\n' '[runtime] Building newlib 1.15.0 and libsysbase from producer sources'
(
    cd "$RUNTIME/newlib"
    CFLAGS=-DREENTRANT_SYSCALLS_PROVIDED "$SOURCE/newlib-1.15.0/configure" \
        --disable-newlib-supplied-syscalls --target=arm-eabi --prefix="$TARGET"
    make -j"$JOBS" MAKEINFO=true
    make install MAKEINFO=true
)

printf '%s\n' '[runtime] Building GCC 4.1.2 target arithmetic, unwinding, and CRT support'
(
    cd "$RUNTIME/gcc"
    CFLAGS='-g -O2 -std=gnu89' "$SOURCE/gcc-4.1.2/configure" \
        --enable-languages=c,c++ --with-cpu=arm7tdmi --enable-interwork \
        --enable-multilib --with-gcc --with-gnu-ld --with-gnu-as \
        --disable-shared --disable-threads --disable-win32-registry \
        --disable-nls --disable-debug --disable-libmudflap --disable-libssp \
        --target=arm-eabi --with-newlib --prefix="$TARGET" \
        --with-headers="$TARGET/arm-eabi/include"
    make -j"$JOBS" all-gcc MAKEINFO=true
)

# GCC 4.1.2 uses relative filenames in __FILE__ and anonymous namespace names.
CPP_LAYOUT="$RUNTIME/cpp-layout"
mkdir -p "$CPP_LAYOUT"
ln -s "$SOURCE/gcc-4.1.2" "$CPP_LAYOUT/gcc-4.1.2"
for variant in arm thumb; do
    cpp_build="$CPP_LAYOUT/arm-eabi/gcc/arm-eabi"
    relative=../../../../gcc-4.1.2/libstdc++-v3
    flags="-g -O2 -frandom-seed=0xce997cde -isystem $TARGET/arm-eabi/include"
    if [ "$variant" = thumb ]; then
        cpp_build="$cpp_build/thumb"
        relative=../../../../../gcc-4.1.2/libstdc++-v3
        flags="-g -O2 -mthumb -frandom-seed=0xcea245db -isystem $TARGET/arm-eabi/include"
    fi
    cpp_build="$cpp_build/libstdc++-v3"
    mkdir -p "$cpp_build"
    printf '[runtime] Building %s libstdc++ and libsupc++ from GCC sources\n' "$variant"
    (
        cd "$cpp_build"
        CFLAGS="$flags" CXXFLAGS="$flags" "$relative/configure" \
            --build=x86_64-unknown-linux-gnu --host=arm-eabi --target=arm-eabi \
            --disable-shared --disable-threads --disable-nls --disable-multilib \
            --with-newlib --prefix="$TARGET"
        make -j"$JOBS" MAKEINFO=true
        make install MAKEINFO=true
    )
done

# Remove every precompiled target archive/object before installing verified output.
find "$SDK/arm-eabi/lib" "$SDK/lib/gcc/arm-eabi/4.1.2" \
    -type f \( -name '*.a' -o -name '*.o' \) -delete
for variant in '' 'thumb/'; do
    library="$SDK/arm-eabi/lib/$variant"
    gcc_library="$SDK/lib/gcc/arm-eabi/4.1.2/$variant"
    cpp_build="$CPP_LAYOUT/arm-eabi/gcc/arm-eabi/${variant}libstdc++-v3"
    mkdir -p "$library" "$gcc_library"
    for name in libc.a libm.a; do
        cp "$RUNTIME/newlib/arm-eabi/${variant}newlib/$name" "$library/$name"
    done
    cp "$RUNTIME/newlib/arm-eabi/${variant}libgloss/libsysbase/libsysbase.a" "$library/"
    cp "$cpp_build/src/.libs/libstdc++.a" "$library/"
    cp "$cpp_build/libsupc++/.libs/libsupc++.a" "$library/"
    for name in libgcc.a libgcov.a crtbegin.o crtend.o crti.o crtn.o; do
        cp "$RUNTIME/gcc/gcc/$variant$name" "$gcc_library/"
    done
    mode=-marm
    if [ -n "$variant" ]; then mode=-mthumb; fi
    for cpu in arm7 arm9; do
        arm-eabi-gcc -x assembler-with-cpp "$mode" -c \
            "$SOURCE/producer/dkarm-eabi/crtls/ds_${cpu}_crt0.s" \
            -o "$library/ds_${cpu}_crt0.o"
    done
done
for name in ds_arm7.ld ds_arm9.ld ds_arm7.specs ds_arm9.specs; do
    cp "$SOURCE/producer/dkarm-eabi/crtls/$name" "$SDK/arm-eabi/lib/"
done
python3 "$ROOT/tools/repro/verify_runtime_objects.py" \
    "$ROOT/research/reconstruction/v06/runtime/object-identities.json" "$SDK" \
    --ar "$SDK/bin/arm-eabi-ar" --report "$RUNTIME/identity-report.json"
for variant in '' 'thumb/'; do
    cp "$SDK/arm-eabi/lib/${variant}libc.a" "$SDK/arm-eabi/lib/${variant}libg.a"
done
rm -rf "$SDK/arm-eabi/include" "$SDK/include/c++/4.1.2"
cp -a "$TARGET/arm-eabi/include" "$SDK/arm-eabi/include"
cp -a "$TARGET/include/c++/4.1.2" "$SDK/include/c++/4.1.2"
printf '%s\n' '[runtime] Verified source-built target runtime installed; SDK executables remain bootstrap tools'

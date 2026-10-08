#!/usr/bin/env bash

prepare_melonds_run() {
    local run_dir="$1" seed="$2" portable="$3"
    mkdir "$run_dir/emulator-state"
    cp "$seed" "$run_dir/melonDS.input.toml"
    cp "$seed" "$run_dir/emulator-state/melonDS.toml"

    # Never follow the previous run's link or discard an unexpected directory.
    if [ -L "$portable" ]; then
        rm "$portable"
    elif [ -d "$portable" ]; then
        rmdir "$portable"
    fi
    ln -s "$run_dir/emulator-state" "$portable"
}

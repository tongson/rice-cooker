#!/usr/bin/env dash
set -efu
rm -rf warp-cwd
git clone --depth 1 https://github.com/tongson/warp-cwd
cd warp-cwd
_V=$(git rev-parse --short HEAD)
cargo build --release
strip -s target/release/warp-cwd
mv target/release/warp-cwd "../warp-cwd.${_V}.exe"

#!/usr/bin/env dash
set -efu
rm -rf swarp
git clone --depth 1 https://github.com/tongson/swarp
cd swarp
_V=$(git rev-parse --short HEAD)
cargo build --release
strip -s target/release/swarp
mv target/release/swarp "../swarp.${_V}.exe"

#!/usr/bin/env dash
set -efu
export LC_ALL=C
rm -rf fd
git clone --depth 1 https://github.com/sharkdp/fd
cd fd
_V=$(git rev-parse --short HEAD)
cargo build --release
strip -s target/release/fd
mv target/release/fd "../fd.${_V}.exe"

#!/usr/bin/env dash
set -efu
rm -rf refmt
git clone --depth 1 https://github.com/yoshihitoh/refmt
cd refmt
_V=$(git rev-parse --short HEAD)
cargo build --release
strip -s target/release/refmt
mv target/release/refmt "../refmt.${_V}.exe"

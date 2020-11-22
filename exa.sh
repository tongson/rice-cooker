#!/usr/bin/env dash
set -efu
rm -rf exa
git clone --depth 1 https://github.com/ogham/exa
cd exa
_V=$(git rev-parse --short HEAD)
cargo build --release
mv target/release/exa "../exa.${_V}.exe"
strip -s "../exa.${_V}.exe"

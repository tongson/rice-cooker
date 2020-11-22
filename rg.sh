#!/usr/bin/env dash
set -efu
rm -rf rg
git clone --depth 1 https://github.com/BurntSushi/ripgrep rg
cd rg
_V=$(git rev-parse --short HEAD)
cargo build --release
strip -s target/release/rg
mv target/release/rg "../rg.${_V}.exe"

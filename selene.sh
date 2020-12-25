#!/usr/bin/env dash
set -efu
rm -rf selene
_V="0.10.1"
git clone --depth 1 --branch "${_V}" https://github.com/Kampfkarren/selene
cd selene
cargo build --release
strip -s target/release/selene
mv target/release/selene "../selene.${_V}.exe"

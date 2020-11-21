#!/usr/bin/env dash
set -efu
export LC_ALL=C
rm -rf fd
git clone --depth 1 https://github.com/sharkdp/fd
cd fd
cargo build --release
mv target/release/fd ../fd.bin
strip -s ../fd.bin

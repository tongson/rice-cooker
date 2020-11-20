#!/usr/bin/env dash
rm -rf exa
git clone --depth 1 https://github.com/ogham/exa
cd exa || exit 1
cargo build --release
mv target/release/exa ../exa.bin

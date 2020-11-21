#!/usr/bin/env dash
rm -rf rg
git clone --depth 1 https://github.com/BurntSushi/ripgrep rg
cd rg || exit 1
cargo build --release
mv target/release/rg ../rg.bin
strip -s ../rg.bin

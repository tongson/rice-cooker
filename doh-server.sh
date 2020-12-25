#!/usr/bin/env dash
set -efu
rm -rf doh-server
git clone --depth 1 https://github.com/jedisct1/doh-server
cd doh-server
_V=$(git rev-parse --short HEAD)
cargo build --release --no-default-features
strip -s target/release/doh-proxy
mv target/release/doh-proxy "../doh-server.${_V}.exe"

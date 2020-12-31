#!/usr/bin/env dash
set -efu
rm -rf RedisJSON
#_V="v1.0.7"
#git clone --depth 1 --branch "${_V}" https://github.com/RedisJSON/RedisJSON
git clone --depth 1 https://github.com/RedisJSON/RedisJSON
cd RedisJSON
cargo build --release
strip -s target/release/librejson.so
mv target/release/librejson.so "../librejson.so"

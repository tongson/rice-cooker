#!/usr/bin/env dash
set -efu
export LC_ALL=C
export CFLAGS="-DNDEBUG -fPIC -O3 -march=nehalem -mtune=haswell -msse4.2 -pipe -fomit-frame-pointer -ffunction-sections -fdata-sections"
export LDFLAGS="-Wl,--gc-sections,--strip-all"
rm -rf hi
git clone --depth 1 https://github.com/soveran/hi
cd hi
_V=$(git rev-parse --short HEAD)
cc -v "$CFLAGS" "$LDFLAGS" hi.c -o "../hi.${_V}.exe"

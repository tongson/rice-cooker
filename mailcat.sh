#!/usr/bin/env dash
set -efu
export LC_ALL=C
export CFLAGS="-DNDEBUG -O3 -march=nehalem -mtune=haswell -msse4.2 -pipe -fomit-frame-pointer -ffunction-sections -fdata-sections"
export LDFLAGS="-Wl,--gc-sections,--strip-all"
rm -rf mailcat
git clone --depth 1 https://github.com/soveran/mailcat
cd mailcat
_V=$(git rev-parse --short HEAD)
cc -v "$CFLAGS" "$LDFLAGS" mailcat.c -o "../mailcat.${_V}.exe"

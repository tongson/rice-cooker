#!/usr/bin/env dash
set -efu
export LC_ALL=C
export CFLAGS="-D_GNU_SOURCE -DNDEBUG -O3 -march=nehalem -mtune=haswell -msse4.2 -pipe -fomit-frame-pointer -ffunction-sections -fdata-sections"
export LDFLAGS="-Wl,--gc-sections,--strip-all"
rm -rf pexec
git clone --depth 1 https://github.com/koraa/pipe_exec pexec
cd pexec
_V=$(git rev-parse --short HEAD)
cc -v -std=c11 "$CFLAGS" "$LDFLAGS" pexec.c -o "../pexec.${_V}.exe"

#!/usr/bin/env dash
export LC_ALL=C
export CFLAGS="-O3 -march=nehalem -mtune=haswell -msse4.2 -pipe -fomit-frame-pointer -ffunction-sections -fdata-sections"
export LDFLAGS="-Wl,--gc-sections,--strip-all"
rm -rf hi
git clone --depth 1 https://github.com/soveran/hi
cd hi || exit 1
make -DNDEBUG
mv hi ../hi.bin

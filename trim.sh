#!/usr/bin/env dash
rm -rf trim
git clone --depth 1 https://github.com/soveran/trim
cd trim || exit 1
make
mv trim ../trim.bin

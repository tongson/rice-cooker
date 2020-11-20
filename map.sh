#!/usr/bin/env dash
rm -rf map
git clone --depth 1 https://github.com/soveran/map
cd map || exit 1
make
mv map ../map.bin

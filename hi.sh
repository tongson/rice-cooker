#!/usr/bin/env dash
rm -rf hi
git clone --depth 1 https://github.com/soveran/hi
cd hi || exit 1
make
mv hi ../hi.bin

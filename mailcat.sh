#!/usr/bin/env dash
rm -rf mailcat
git clone --depth 1 https://github.com/soveran/mailcat
cd mailcat || exit 1
make
mv mailcat ../mailcat.bin

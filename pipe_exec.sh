#!/usr/bin/env dash
rm -rf pipe_exec
git clone --depth 1 https://github.com/koraa/pipe_exec
cd pipe_exec || exit 1
make
mv pexec ../pexec.bin

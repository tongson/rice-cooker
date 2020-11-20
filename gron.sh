#!/usr/bin/env dash
rm -rf gron
git clone --depth 1 https://github.com/tomnomnom/gron
cd gron || exit 1
GOOS=linux CGO_ENABLED=0 go build -trimpath -o ../gron.bin -ldflags '-s -w -extldflags "-static"'

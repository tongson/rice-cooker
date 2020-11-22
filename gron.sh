#!/usr/bin/env dash
set -efu
rm -rf gron
git clone --depth 1 https://github.com/tomnomnom/gron
cd gron
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../gron.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

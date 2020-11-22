#!/usr/bin/env dash
set -efu
rm -rf kapow
git clone --depth 1 https://github.com/BBVA/kapow
cd kapow
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../kapow.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

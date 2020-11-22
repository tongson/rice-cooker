#!/usr/bin/env dash
set -efu
rm -rf rr
git clone --depth 1 https://github.com/tongson/rr
cd rr
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../rr.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/rr

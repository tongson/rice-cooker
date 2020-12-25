#!/usr/bin/env dash
set -efu
rm -rf authelia
_V="v4.24.1"
git clone --depth 1 --branch "${_V}" https://github.com/authelia/authelia
cd authelia
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../authelia.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/authelia

#!/usr/bin/env dash
set -efu
rm -rf unbound_exporter
git clone --depth 1 https://github.com/kumina/unbound_exporter
cd unbound_exporter
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../unbound_exporter.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

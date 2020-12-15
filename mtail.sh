#!/usr/bin/env dash
set -efu
rm -rf mtail
_V="v3.0.0-rc38"
git clone --depth 1 --branch "${_V}" https://github.com/google/mtail
cd mtail
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../mtail.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/mtail

#!/usr/bin/env dash
set -efu
rm -rf gopkgs
_V="v2.1.2"
git clone --depth 1 --branch "${_V}" https://github.com/uudashr/gopkgs
cd gopkgs
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../gopkgs.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/gopkgs

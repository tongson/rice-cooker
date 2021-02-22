#!/usr/bin/env dash
set -efu
rm -rf dlv
_V="v1.6.0"
git clone --depth 1 --branch "${_V}" https://github.com/go-delve/delve dlv
cd dlv
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../dlv.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/dlv

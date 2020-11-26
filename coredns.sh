#!/usr/bin/env dash
set -efu
rm -rf coredns
_V="v1.8.0"
git clone --depth 1 --branch "${_V}" https://github.com/coredns/coredns
cd coredns
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../coredns.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

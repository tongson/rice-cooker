#!/usr/bin/env dash
set -efu
rm -rf bitcask
_V="v0.3.9"
git clone --depth 1 --branch "${_V}" https://github.com/prologic/bitcask
cd bitcask
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../bitcask.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/bitcask/...
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../bitcaskd.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/bitcaskd/...

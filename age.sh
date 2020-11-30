#!/usr/bin/env dash
set -efu
rm -rf age
git clone --depth 1 https://github.com/FiloSottile/age
cd age
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../age.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/age
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../age-keygen.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/age-keygen

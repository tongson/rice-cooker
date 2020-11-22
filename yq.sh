#!/usr/bin/env dash
set -efu
rm -rf yq
git clone --depth 1 https://github.com/mikefarah/yq
cd yq
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../yq.${_V}.exe" -ldflags '-s -w -extldflags "-static"' yq.go

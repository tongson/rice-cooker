#!/usr/bin/env dash
set -efu
rm -rf redwood
git clone --depth 1 https://github.com/andybalholm/redwood
cd redwood
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../redwood.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

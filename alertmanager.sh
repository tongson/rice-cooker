#!/usr/bin/env dash
set -efu
rm -rf alertmanager
_V="v0.21.0"
git clone --depth 1 --branch "${_V}" https://github.com/prometheus/alertmanager
cd alertmanager
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../alertmanager.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/alertmanager

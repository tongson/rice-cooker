#!/usr/bin/env dash
set -efu
rm -rf prometheus
_V="v2.23.0"
git clone --depth 1 --branch "${_V}" https://github.com/prometheus/prometheus
cd prometheus
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../prometheus.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/prometheus

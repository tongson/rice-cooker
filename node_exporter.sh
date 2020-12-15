#!/usr/bin/env dash
set -efu
rm -rf node_exporter
_V="v1.0.1"
git clone --depth 1 --branch "${_V}" https://github.com/prometheus/node_exporter
cd node_exporter
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../node_exporter.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

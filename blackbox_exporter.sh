#!/usr/bin/env dash
set -efu
rm -rf blackbox_exporter
_V="v0.18.0"
git clone --depth 1 --branch "${_V}" https://github.com/prometheus/blackbox_exporter
cd blackbox_exporter
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../blackbox_exporter.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

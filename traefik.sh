#!/usr/bin/env dash
set -efu
rm -rf traefik
_V="v2.3.5"
git clone --depth 1 --branch "${_V}" https://github.com/traefik/traefik
cd traefik
go generate
GOOS=linux GOGC=off CGO_ENABLED=0 go build \
  -trimpath -o "../traefik.${_V}.exe" -ldflags '-s -w -extldflags "-static"' ./cmd/traefik

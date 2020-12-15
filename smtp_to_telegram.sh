#!/usr/bin/env dash
set -efu
rm -rf smtp_to_telegram
git clone --depth 1 https://github.com/KostyaEsmukov/smtp_to_telegram
cd smtp_to_telegram
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../smtp_to_telegram.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

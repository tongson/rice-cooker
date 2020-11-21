#!/usr/bin/env dash
set -efu
rm -rf authelia
git clone --depth 1 https://github.com/authelia/authelia
cd authelia
GOOS=linux CGO_ENABLED=0 go build -trimpath -o ../authelia.bin -ldflags '-s -w -extldflags "-static"' ./cmd/authelia

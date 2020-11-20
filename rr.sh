#!/usr/bin/env dash
rm -rf rr
git clone --depth 1 https://github.com/tongson/rr
cd rr || exit 1
GOOS=linux CGO_ENABLED=0 go build -trimpath -o ../rr.bin -ldflags '-s -w -extldflags "-static"' ./cmd/rr

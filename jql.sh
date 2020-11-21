#!/usr/bin/env dash
set -efu
rm -rf jql
git clone --depth 1 https://github.com/cube2222/jql
cd jql
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../jql.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

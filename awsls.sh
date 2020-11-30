#!/usr/bin/env dash
set -efu
rm -rf awsls
git clone --depth 1 https://github.com/jckuester/awsls
cd awsls
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../awsls.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

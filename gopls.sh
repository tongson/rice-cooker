#!/usr/bin/env dash
set -efu
rm -rf gopls
_V="gopls/v0.6.5"
git clone --depth 1 --branch "${_V}" https://github.com/golang/tools gopls
cd gopls/gopls
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../..//gopls.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

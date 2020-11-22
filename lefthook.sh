#!/usr/bin/env dash
set -efu
rm -rf lefthook
git clone --depth 1 https://github.com/Arkweid/lefthook
cd lefthook 
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../lefthook.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

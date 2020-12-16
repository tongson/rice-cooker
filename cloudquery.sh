#!/usr/bin/env dash
_V="v0.4.2"
set -efu
rm -rf cloudquery
git clone --depth 1 --branch "${_V}" https://github.com/cloudquery/cloudquery
cd cloudquery
GOOS=linux CGO_ENABLED=1 go build -trimpath -o "../cloudquery.${_V}.exe"

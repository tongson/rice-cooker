#!/usr/bin/env dash
set -efu
rm -rf terraform
_V="v0.14.7"
git clone --depth 1 --branch "${_V}" https://github.com/hashicorp/terraform
cd terraform
GOOS=linux CGO_ENABLED=0 go build \
  -trimpath -o "../terraform.${_V}.exe" -ldflags '-s -w -extldflags "-static"'

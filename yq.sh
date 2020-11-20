#!/usr/bin/env dash
rm -rf yq
git clone --depth 1 https://github.com/mikefarah/yq
cd yq || exit 1
GOOS=linux CGO_ENABLED=0 go build -trimpath -o ../yq.bin -ldflags '-s -w -extldflags "-static"' yq.go

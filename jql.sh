#!/usr/bin/env dash
rm -rf jql
git clone --depth 1 https://github.com/cube2222/jql
cd jql || exit 1
GOOS=linux CGO_ENABLED=0 go build -trimpath -o ../jql.bin -ldflags '-s -w -extldflags "-static"'

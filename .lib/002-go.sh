_go_build()
(
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local x="${1:-.}"
  GOOS=linux CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w -extldflags "-static"' \
    -o "${_TARGET}/${bin}.${tag}" "${x}"
)

_go_generate()
(
  cd "${NAME}" || exit
  go generate
)

_go_build()
(
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  GOOS=linux CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w -extldflags "-static"' \
    -o "${_TARGET}/${bin}.${tag}" "${1}" 
)

_go_generate()
(
  cd "${NAME}" || exit
  go generate
)

_go_prelude()
{
  command -v go >/dev/null || { printf "go command not found.\\n"; exit 1; }
}

_go_build()
(
  _go_prelude
  cd "${NAME}" || exit 1
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local x="${1:-.}"
  __mark "go build ${bin}"
  GOOS=linux CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w' \
    -o "${_TARGET}/${bin}.${tag}" "${x}"
)

_go_build_macos()
(
  _go_prelude
  cd "${NAME}" || exit 1
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local x="${1:-.}"
  __mark "go build ${bin}"
  GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w' \
    -o "${_TARGET}/${bin}.${tag}" "${x}"
)

_cgo_build()
(
  _go_prelude
  cd "${NAME}" || exit 1
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local x="${1:-.}"
  __mark "go build ${bin}"
  GOOS=linux CGO_ENABLED=1 go build \
    -trimpath -ldflags '-s -w' \
    -o "${_TARGET}/${bin}.${tag}" "${x}"
)

_go_build_submodule()
(
  _go_prelude
  cd "${NAME}" || exit 1
  cd "${1}" || exit 1
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${3:-${NAME}}"
  local x="${2:-.}"
  __mark "go build ${bin}"
  GOOS=linux CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w' \
    -o "${_TARGET}/${bin}.${tag}" "${x}"
)

_go_generate()
(
  _go_prelude
  cd "${NAME}" || exit 1
  go generate
)

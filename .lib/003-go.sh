_go_prelude()
{
  command -v go || { printf "go command not found.\\n"; exit 1; }
}

_go_build()
(
  _go_prelude
  cd "${NAME}" || exit 1
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local x="${1:-.}"
  GOOS=linux CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w -extldflags "-static"' \
    -o "${_TARGET}/${bin}.${tag}" "${x}"
)

_go_generate()
(
  _go_prelude
  cd "${NAME}" || exit 1
  go generate
)

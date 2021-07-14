_cargo_build()
(
  command -v cargo >/dev/null || { printf 1>&2 "cargo command not found.\\n"; exit 1; }
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  __mark "cargo build ${bin}"
  cargo build --release --locked "$@"
  strip -s "target/release/${NAME}"
  mv "target/release/${NAME}" "${_TARGET}/${bin}.${tag}"
)

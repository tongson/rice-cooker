_cargo_prelude()
{
  command -v cargo || { printf "cargo command not found.\\n"; exit 1; }
}

_cargo_build()
(
  _cargo_prelude
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  cargo build --release
  strip -s "target/release/${NAME}"
  mv "target/release/${NAME}" "${_TARGET}/${bin}.${tag}"
)

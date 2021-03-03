_cargo_build()
(
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  cargo build --release
  strip -s "target/release/${NAME}"
  mv "target/release/${NAME}" "${_TARGET}/${bin}.${tag}"
)

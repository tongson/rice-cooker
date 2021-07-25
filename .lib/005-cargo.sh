_cargo_build()
(
  command -v cargo >/dev/null || { printf 1>&2 "cargo command not found.\\n"; exit 1; }
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local exe="${NAME}.${tag}"
  __mark "cargo build ${NAME}"
  cargo build --release --locked "$@"
  strip -s "target/release/${NAME}"
  mv "target/release/${NAME}" "${_TARGET}/${exe}"
  ln -sf "${_TARGET}/${exe}" "${exe}"
)

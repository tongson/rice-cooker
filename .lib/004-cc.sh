_cc()
(
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local cflags="${CFLAGS:--Os -pipe -fomit-frame-pointer -march=nocona}"
  local ldflags="${LDFLAGS:--Wl,--strip-all}"
  cc -v "${cflags}" "${ldflags}" -o "${_TARGET}/${bin}.${tag}" "${1}"
)

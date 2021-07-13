_cc_prelude()
{
  command -v cc >/dev/null || { printf 1>&2 "cc (C compiler) not found.\\n"; exit 1; }
}

_make_prelude()
{
  command -v make >/dev/null || { printf 1>&2 "make command not found.\\n"; exit 1; }
}

_cc()
(
  _cc_prelude
  cd "${NAME}" || exit
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  local cflags="${CFLAGS:--DNDEBUG -Os -pipe -fomit-frame-pointer -march=nocona}"
  local ldflags="${LDFLAGS:--Wl,--strip-all}"
  __mark "cc {bin}"
  cc -v "${cflags}" "${ldflags}" -o "${_TARGET}/${bin}.${tag}" "${1}"
)

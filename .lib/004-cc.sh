_cc()
{
  cd "${NAME}"
  local tag="${TAG:-$(git rev-parse --short HEAD)}"
  local bin="${2:-${NAME}}"
  cc -v "${CFLAGS}" "${LDFLAGS}" -o "${_TARGET}/${bin}.${tag}" "${1}" 
  cd -
}

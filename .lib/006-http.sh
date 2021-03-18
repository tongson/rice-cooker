_get()
(
  command -v curl || { printf "curl command not found.\\n"; exit 1; }
  cd "${_SRC}" || exit 1
  test -f "${_SRC}/${NAME}.zip" || curl -LO "${SRC}"
)

_unzip()
(
  command -v unzip || { printf "unzip command not found.\\n"; exit 1; }
  cd "${_WORK}" || exit 1
  unzip "${_SRC}/${NAME}.zip"
)

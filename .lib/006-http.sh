_get()
(
  cd "${_SRC}" || exit 1
  test -f "${_SRC}/${NAME}.zip" || curl -LO "${SRC}"
)

_unzip()
(
  cd "${_WORK}" || exit 1
  unzip "${_SRC}/${NAME}.zip"
)

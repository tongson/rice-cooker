_TARGET="${HOME}/bin"
mkdir -p "${_TARGET}"
_SRC="${HOME}/src"
mkdir -p "${_SRC}"
_WORK=$(mktemp -d)
_trap()
{
  rm -rf "${_WORK}"
  printf "Something went wrong or we were interrupted.\n"
  trap - EXIT
  exit
}

trap _trap EXIT INT HUP
cd "${_WORK}" || exit 1

_chdir_build()
{
  cd "${NAME}" || exit 1
}

_TARGET="${HOME}/bin"
mkdir -p "${_TARGET}"
_SRC="${HOME}/src"
mkdir -p "${_SRC}"
_WORK=$(mktemp -d)
_trap()
{
  local exit_status=${1:-$?}
  if [ $exit_status = 0 ]
  then
    printf "\nCleaning up.\n"
  else
    printf 1>&2 "\nSomething when wrong.\n"
  fi
  rm -rf "${_WORK}"
  trap - EXIT
  exit
}
trap _trap EXIT INT HUP
cd "${_WORK}" || exit 1
_chdir_build()
{
  cd "${NAME}" || exit 1
}

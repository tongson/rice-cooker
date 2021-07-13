_TARGET="${HOME}/bin"
mkdir -p "${_TARGET}"
_SRC="${HOME}/src"
mkdir -p "${_SRC}"
_WORK=$(mktemp -d)
_trap()
{
  rm -rf "${_WORK}"
  local exit_status=${1:-$?}
  if [ $exit_status = 0 ]
  then
    printf "\nCleaning up.\n"
  else
    set +u
    test -z ${BASH} &&
    printf 1>&2 "\nSomething went wrong.\n" ||
    # The FUNCNAME throws a bad substition error on BushBox sh and dash
    printf 1>&2 "\nSomething when wrong: %s\n" "${FUNCNAME[1]}"
  fi
  trap - EXIT
  exit
}
trap _trap EXIT INT HUP
cd "${_WORK}" || exit 1
_chdir_build()
{
  cd "${NAME}" || exit 1
}

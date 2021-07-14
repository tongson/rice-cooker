_chdir_build()
{
  cd "${NAME}" || exit 1
}
_trap()
{
  # Assigning the exit code MUST be the first line here
  local exit_status=${1:-$?}
  rm -rf "${_WORK}"
  printf "\n"
  if [ $exit_status = 0 ]
  then
    printf "Cleaning up."
  else
    set +u
    test -z ${BASH} &&
    printf 1>&2 "Something went wrong." ||
    # The FUNCNAME throws a bad substition error on BushBox sh and dash
    printf 1>&2 "Something went wrong: %s" "${FUNCNAME[1]}"
  fi
  printf "\n"
  trap - EXIT
  exit
}
trap _trap EXIT INT HUP

_TARGET="${HOME}/bin"
mkdir -p "${_TARGET}"
_SRC="${HOME}/src"
mkdir -p "${_SRC}"
_WORK=$(mktemp -d)
cd "${_WORK}" || exit 1

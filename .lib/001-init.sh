_chdir_build()
{
  cd "${NAME}" || exit 1
}
_trap()
{
  # Assigning the exit code MUST be the first line here
  local exit_status=${1:-$?}
  rm -rf "${_WORK}"
  if [ $exit_status = 0 ]
  then
    printf "\n"
    printf "Cleaning up."
    printf "\n"
  else
    printf 1>&2 "\n"
    set +u
    # The FUNCNAME throws a bad substition error on BushBox sh and dash
    test -z ${BASH} &&
    { printf 1>&2 "Something went wrong."; } ||
    { printf 1>&2 "Something went wrong: %s" "${FUNCNAME[1]}"; }
    printf 1>&2 "\n"
  fi
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

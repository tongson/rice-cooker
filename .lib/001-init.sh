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
    __mark "Cleaned up."
  else
    set +u
    # The FUNCNAME throws a bad substition error on BushBox sh and dash
    if test -z ${BASH}
    then
      {
        __mark "Something went wrong.";
      }
    else
      {
        __mark "Something went wrong: ${FUNCNAME[1]}";
      }
    fi
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

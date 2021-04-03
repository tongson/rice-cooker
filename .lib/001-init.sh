_TARGET="${HOME}/bin"
mkdir -p "${_TARGET}"
_SRC="${HOME}/src"
mkdir -p "${_SRC}"
_WORK=$(mktemp -d)
trap 'rm -rf "${_WORK}"; trap - EXIT; exit' EXIT INT HUP
cd "${_WORK}" || exit 1

_chdir_build()
{
  cd "${NAME}" || exit 1
}

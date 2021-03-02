_TARGET="${HOME}/bin"
mkdir -p "${_TARGET}"
_WORK=$(mktemp -d)
trap 'rm -rf "${_WORK}"; trap - EXIT; exit' EXIT INT HUP
cd "${_WORK}"

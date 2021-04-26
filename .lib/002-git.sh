_git_prelude()
{
  command -v git >/dev/null || { printf "git command not found.\\n"; exit 1; }
}

_git_clone_tag()
{
  _git_prelude
  __mark "git clone ${SRC}:${TAG}"
  git clone --depth 1 --branch "${TAG}" "${SRC}" "${NAME}"
}

_git_clone()
{
  _git_prelude
  __mark "git clone ${SRC}"
  git clone --depth 1 "${SRC}" "${NAME}"
}

_git_clone_url()
{
  _git_prelude
  __mark "git clone ${1}"
  git clone --depth 1 "${1}"
}

_git_head()
{
  _git_prelude
  git rev-parse --short HEAD
}

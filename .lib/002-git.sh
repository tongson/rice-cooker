_git_clone_tag()
{
  git clone --depth 1 --branch "${TAG}" "${SRC}" "${NAME}"
}

_git_clone()
{
  git clone --depth 1 "${SRC}" "${NAME}"
}

_git_clone_url()
{
  git clone --depth 1 "${1}"
}

_git_get_rev()
{
  git rev-parse --short HEAD
}

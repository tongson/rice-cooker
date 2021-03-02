_git_clone_tag()
{
  git clone --depth 1 --branch "${TAG}" "${SRC}" "${NAME}"
}

_git_clone_src()
{
  git clone --depth 1 "${SRC}" "${NAME}"
}

_git_clone()
{
  git clone --depth 1 "${1}"
}

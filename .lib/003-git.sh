_git_clone_tag()
{
  git clone --depth 1 --branch "${TAG}" "${SRC}" "${NAME}"
}

_git_clone()
{
  git clone --depth 1 "${TAG}" "${NAME}"
}

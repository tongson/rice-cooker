__mark()
{
    printf >&2 '► “%s” \n' "$*"
    printf '► “%s” \n' "$*"
}

__print()
{
    printf '[\e[1;33m+\e[m] \e[1;35m%s\e[m\n' "$@"
}

__info()
{
    printf '\e[1;36m+\e[m \e[1;34minfo \e[m %s\n' "$@"
}

__debug()
{
    printf '\e[1;36m.\e[m \e[1;35mdebug\e[m %s\n' "$@"
}

__fatal()
{
    printf 1>&2 '\e[1;36m!\e[m \e[1;31mfatal\e[m %s\n' "$@"
}

__ok()
{
    printf '\e[1;36m*\e[m \e[1;32mok   \e[m %s\n' "$@"
}

__fnmatch()
{
    # shellcheck disable=SC2254
    case "$2" in $1) return 0 ;; *) return 1 ;; esac ;
}

__is_empty() (
    cd "$1" || return 1
    set -- .[!.]* ; test -f "$1" && return 1
    set -- ..?* ; test -f "$1" && return 1
    set -- * ; test -f "$1" && return 1
    return 0
)

__quote()
{
    printf %s\\n "$1" | sed "s/'/'\\\\''/g;1s/^/'/;\$s/\$/'/" ;
}


__wait_connrefused()
{
    command -v nc || { __fatal "netcat executable not found."; return 1; }
    local ip="${1%%:*}"
    local port="${1##*:}"
    local retries=0
    local max=16
    until ! nc -z "$ip" "$port"
    do
    __info "Retrying..."
    sleep 1
    retries=$((retries+1))
    test "$retries" -lt "$max" || { __fatal "Reached maximum retries."; return 1; }
    done
}

__wait_connection()
{
    command -v nc || { __fatal "netcat executable not found."; return 1; }
    local ip="${1%%:*}"
    local port="${1##*:}"
    local retries=0
    local max=16
    until nc -z "$ip" "$port"
    do
    __info "Retrying..."
    sleep 1
    retries=$((retries+1))
    test "$retries" -lt "$max" || { __fatal "Reached maximum retries."; return 1; }
    done
}

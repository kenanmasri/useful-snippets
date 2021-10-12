#~/.bashrc


# Convert path from Windows to POSIX
path_posix() { echo "$1" | sed -r -e 's/^([^:]+):/\/\1/' -e 's/\\/\//g'; }
# Convert path from POSIX to Windows
path_windows() { echo "$1" | sed -e 's|^/\(.\)/|\1:\\|g' -e 's|/|\\|g'; }
# Convert path by auto detection of system (msys/win32 otherwise POSIX)
path_auto() {
    local p=""
    if [[ "$OSTYPE" == "msys" && "$OSTYPE" != "win32" ]]; then
        p="posix"
    else
        p="windows"
    fi
    echo `path_$p "$1"`
}

export -f path_posix
export -f path_windows
export -f path_auto
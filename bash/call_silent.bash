#~/.bashrc


# Start subprocess silently.
call_silent() { { 2>&3 "$@"& } 3>&2 2>/dev/null; }

export -f call_silent
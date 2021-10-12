#~/.bashrc
# requires: bash/characters.bash

# print beautifully.
prnt() {
    local _tag="log:"
    local _type="info"
    local _msg=""
    local _col=""

    if [[ $QUIET -gt 0 ]]; then
        return
    fi

    if [[ $# -eq 3 ]]; then
        _tag=$1
        _type=$2
        _msg="$3"
    fi
    if [[ $# -eq 2 ]]; then
        _tag=$1
        _msg="$2"
    fi
    if [[ $# -eq 1 ]]; then
        _msg="$1"
    fi

    if [[ "${_type^^}" == "INFO" ]]; then
        _col=${c_cyan}
    elif [[ "${_type^^}" == "WARNING" || "${_type^^}" == "WARN" ]]; then
        _type="WARN"
        _col=${c_yellow}
    elif [[ "${_type^^}" == "ERROR" || "${_type^^}" == "ERR" || "${_type^^}" == "CRITICAL" || "${_type^^}" == "CRIT" ]]; then
        _type="ERROR"
        _col=${c_red}
    elif [[ "${_type^^}" == "DEBUG" || "${_type^^}" == "DEBG" || "${_type^^}" == "DBUG" || "${_type^^}" == "DBG" ]]; then
        _type="DEBUG"
        _col=${c_green}
    fi

    if [[ "${_type^^}" == "DEBUG" ]]; then
        if [[ $DEBUG -lt 1 ]]; then
            return
        fi
    fi

    echo -e "${c_magenta}${_tag}/${c_bold}${_type}${c_reset}${c_magenta}:${c_reset} ${_col}${_msg}${c_reset}"
}
export -f prnt
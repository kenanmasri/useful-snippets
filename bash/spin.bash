#~/.bashrc
# requires: bash/call_silent.bash, bash/paths.bash, python/spin.py

SPIN=""
# Spin function (off, on, or automatic)
spin() {
    local pa=`path_auto "$KM_USEFUL_DIR/python/spin.py"`
    if [ $# -eq 0 ]; then
        if [ "$SPIN" == "" ]; then
            call_silent "python" "$pa"
            SPIN=$!
        else
            kill -9 $SPIN 2>/dev/null
            wait $SPIN 2>/dev/null
            echo " "
            tput cuu 1 && tput el && echo -ne "\033[2K\r \n";
            SPIN=""
        fi
    elif [ "$1" == "on" ]; then
        if [ "$SPIN" != "" ]; then
            _fn_spin "off"
        fi
        shift
        call_silent "python" "$pa" $*
        SPIN=$!
    elif [ "$1" == "off" ]; then
        if [ "$SPIN" == "" ]; then
            echo "(SPIN) subprocess is not set."
        else
            kill -9 $SPIN 2>/dev/null
            wait $SPIN 2>/dev/null
            echo " "
            tput cuu 1 && tput el && echo -ne "\033[2K\r \n";
            SPIN=""
        fi
    fi
}

export SPIN
export -f spin

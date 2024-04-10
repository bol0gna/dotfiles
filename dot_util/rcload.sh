# inspired by https://github.com/jez/dotfiles/blob/master/bashrc
rcload() {
    if [ -n "$FAIL" ]; then
        return
    fi

    if [ -f "$1" ]; then
        if ! . "$1"; then
            echo "could not load $1"
            export FAIL=1
        fi
    fi
}


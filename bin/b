#!/bin/sh
# b - load named files in an editor

if [ x != x"$DEBUG" ]; then
    set -x
fi

# nvimfs fuse mount point
nvimfs="$HOME/.config/nvim/neovimfs"


## Helper functions
usage() {
    echo 'usage: b [+lineno] file...' 2>&1
    exit 1
}

nvim_clients() {
    find "$nvimfs/clients" \
        -depth 1 \
        -type d
}

nvim_path() {
    client="$(nvim_clients | head -n 1)"
    echo "$client/cmd"
}

nvim_available() {
    test -f "$(nvim_path)"
}

nvim_open() {
    file="$1"
    lineno="$2"
    escaped=$(echo "$file" | sed 's/ /\\ /')
    nvim="$(nvim_path)"
    if [ ! -f "$nvim" ]; then
        echo "b: could not find neovim cmd socket: '$nvim'" >&2
        exit 1
    fi
    echo "vsplit" > "$nvim"
    echo "e $escaped" > "$nvim"
    if [ -n "$lineno" ]; then
        echo "$lineno" > "$nvim"
    fi
}

sam_available() {
    test -p "$(sam_path)"
}

sam_path() {
    if [ -z "$DISPLAY" ]; then
        sam="/tmp/.sam.$USER"
    else
        if [ "$DISPLAY" = ":0" ]; then
            DISPLAY=:0.0
        fi
        sam="/tmp/.sam.$USER.$DISPLAY"
    fi
    echo "$sam"
}

sam_open() {
    file="$1"
    lineno="$2"
    sam="$(sam_path)"
    echo "B $file" >> "$sam"
    if [ -n "$lineno" ]; then
        echo "$lineno" >> $sam
    fi
}

plumb_available() {
    # true
    false
}

plumb_open() {
    file=$1
    plumb -s B -d edit "$file"
}

editor_available() {
    true
}

lineno=""
if [ $# -gt 0 ]; then
    case "$1" in
        +[0-9]*)
            lineno="$(echo "$1" | sed 's/+/:/')"
            shift
            ;;
    esac
fi

# default file: '.'
if [ "$#" = 0 ]; then
    set .
fi

for i; do
    i="$i$lineno"
    fullpath="$(realpath "$i")"
    # lineno should be empty unless fullpath ~= /:/
    lineno="$(echo "${fullpath}" | grep ':' | sed 's/^.*://')"
    file="$(echo "${fullpath}" | sed 's/:.*//')"
    echo "editing $fullpath" >&2
    if nvim_available; then
        nvim_open "$file" "$lineno"
    elif sam_available; then
        sam_open "$file" "$lineno"
    elif plumb_available; then
        plumb_open "$fullpath"
    elif editor_available; then
        exec "$EDITOR" "$fullpath"
    else
        open "$file"
    fi
done

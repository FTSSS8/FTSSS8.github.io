#!/bin/bash
function buildpage {
    local TITLE=$(head -n 1 "$1")

    local CONTENT=$(tail -n +2 "$1")

    sed "s~{{TITLE}}~$TITLE~" layout/before.html

    echo "$CONTENT"

    cat layout/after.html
}

if [[ "${1}" = "" ]]; then
    echo "Usage: ${0} PAGE" >&2
    exit 1
elif test ! -f "${1}"; then
    echo "${0}: error: ${1}: no such file" >&2
    exit 1
else
    FILE="${1#pages/}" 
    buildpage "$1" > "public/${FILE}"
fi

#!/bin/bash
# Usage: continuous-update.sh

have_inotifywait=1
which inotifywait >/dev/null || {
    echo "'inotifywait' not found. Install a package like inotify-tools." >&2
    echo "Falling back to polling." >&2
    have_inotifywait=0
}

while :; do
    echo "* $(date)"
    for i in $(seq 5); do
        for j in *.tex; do
            if [ \
                "$j" -nt "$(basename -- "$j" tex)png" -a \
                "$j" -nt "$(basename -- "$j" .tex)-01.png" \
            ]; then
                echo $j
                bash ./latex2png "$j"
            fi
        done
        sleep 0.3
    done
    echo

    if [ "$have_inotifywait" = "1" ]; then
        inotifywait -e modify -e moved_to -e create -e close_write . &>/dev/null
    else
        sleep 0.3
    fi
done

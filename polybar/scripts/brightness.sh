#!/bin/bash

BRIGHT=`cat brightness.txt`

if [ "$1" = '+' ]; then
    NEWBRIGHT=$(echo "$BRIGHT + 0.2" | bc)
    if [ "$(echo "$NEWBRIGHT > 2.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='2.0'
    fi
elif [ "$1" = '-' ]; then
    NEWBRIGHT=$(echo "$BRIGHT - 0.2" | bc)
    if [ "$(echo "$NEWBRIGHT < 0.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='0.0'
    fi
fi
echo $NEWBRIGHT > brightness.txt
xrandr --output LVDS-1 --brightness $NEWBRIGHT

#!/usr/bin/env sh
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch barra nera
#polybar sbatubar-black -r -c ~/.config/polybar/config.ini #-r per debug
polybar sbatubar-black -c ~/.config/polybar/config.ini #senza -r

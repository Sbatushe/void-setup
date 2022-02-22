#!/usr/bin/fish
kill polybar;
~/.config/polybar/launch.sh &
notify-send "Reset di Polybar fatto" &

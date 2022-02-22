#!/bin/bash
#script per ottenere un DE all-avvio del tiling window manager
#[Usare solo su XORG]

#picom rounded corners
~/custom-sw/picom/picom &
#img sfondo
feh --bg-scale /home/sbatushe/Immagini/dirtyhacks.png &
#cose GNOME

#layout tastiera ita
setxkbmap it
#polybar
~/.config/polybar/launch.sh &
#mouse normale
xsetroot -cursor_name left_ptr
#messaggio con notify
notify-send "avvio completo";

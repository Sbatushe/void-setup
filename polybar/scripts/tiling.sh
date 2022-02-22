#!/bin/bash
#script per fare lo switch da xfwm ad un tiling wm
if [ "$1" = 0 ]; then
    doas killall xfwm4;
    xfce4panel -q;
    i3 -c /home/sbatushe/.config/i3/config-xfce.conf &
    echo "i3";
else
    doas killall i3;
    xfwm4 &
    echo "xfwm";
fi
#restart polybar per adattarlo al wm
/home/sbatushe/.config/polybar/launch.sh &

#messaggio con notify
if [ "$1" = 0 ]; then
    notify-send "i3";
else
    notify-send "Xfwm";
fi

#giacchè gestiamo lo sfondo con feh
feh --bg-scale /home/sbatushe/Immagini/wp4.jpeg &
#!/bin/bash
#script per mtare/abilitare il microfono di un tiling wm
pactl set-source-mute @DEFAULT_SOURCE@ toggle &
mic=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
#if [[ $mic == "no" ]]; then
#	notify-send -i /usr/share/icons/Adwaita/scalable/status/audio-volume-muted-symbolic.svg "Muto" &
#else
#	aplay ~/Musica/notifica-mini.wav -q &
#	notify-send -i /usr/share/icons/Adwaita/scalable/status/audio-volume-high-symbolic.svg "Mic abilitato" &
#fi

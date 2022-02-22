#!/bin/bash
#script per mtare/abilitare il volume di un tiling wm
pactl set-sink-mute @DEFAULT_SINK@ toggle &
vol=$(amixer sget 'Master' | awk 'FNR==5{print $6}')
#non so perchè va al contrario, ma vabbè
if [[ $vol == "[on]" ]]; then
	#notify-send -i /usr/share/icons/Adwaita/scalable/status/audio-volume-muted-symbolic.svg "No-Talk" &
else
	aplay ~/Musica/notifica-mini.wav -q &
	#notify-send -i /usr/share/icons/Adwaita/scalable/status/audio-volume-high-symbolic.svg "Suono" &
fi

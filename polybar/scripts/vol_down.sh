#!/bin/bash
#script per abbassare il volume di un tiling wm
amixer -q sset 'Master' 10%- 
vol=$(amixer sget 'Master' | awk 'FNR==5{print $4}')
if [[ $vol != "[0%]" ]]; then
	aplay ~/Musica/notifica-mini.wav -q &
	#notify-send -i /usr/share/icons/Adwaita/scalable/status/audio-volume-low-symbolic.svg "Volume down" &
fi

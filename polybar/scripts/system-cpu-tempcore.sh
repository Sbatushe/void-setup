#!/bin/sh
sensors | grep "Core 0" | awk '{print substr($3, 2, length($3)-5)}' | tr "\\n" " " | sed 's/ /°C   /g' | sed 's/  $//'
#per eseguire lo script serve lm-sensors (doas apt insall lm-sensors)

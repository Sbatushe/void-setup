#!/bin/sh
#script per alzare il volume di un tiling wm
from os import system

VOL = "amixer sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' > vol"
system(VOL)
VOL = open('vol','r').read().replace('\n','')
#print("vol=["+VOL+"]")

if (VOL!="0%"):
	system("amixer -q sset 'Master' 0%")
else:
	system("amixer -q sset 'Master' 50%")
system("aplay ~/Musica/notifica-mini.wav -q")


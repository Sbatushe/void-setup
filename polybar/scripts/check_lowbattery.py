"""
 script che controlla la batteria, se < 20 => fa suono e mostra allarme
 REQUISITI:
 - python3
 - aplay
 - cat
 - rofi
 - tema black2.rasi (rofi)
 - il file audio
"""
import os
import subprocess

rv = subprocess.Popen(["cat","/sys/class/power_supply/BAT0/status"],
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT)
stdout = rv.communicate()
if stdout != "":
    if ("Charging" not in str(stdout)):
        rv = subprocess.Popen(["cat","/sys/class/power_supply/BAT0/capacity"],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT)
        stdout = rv.communicate()
        if stdout != "":
            s = str(stdout[0])
            level = int(s[2:4])
            if (level < 20):
                command = "rofi -modi drun -show drun -e \"La batteria ha raggiunto il livello critico\" -theme black2 &"
                os.system(command)
                command = "aplay ~/Musica/warning_horn.wav -q"
                os.system(command)
    print("  ")

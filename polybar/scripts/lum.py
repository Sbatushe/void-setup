#script per gestire la luminosità, necessita di brightnessctl (apt install)
#usare con up/down come arg[0]
from os import system
from sys import argv

lum = system("brightnessctl -m | awk -F, '{ print $3 }'> lum")
lum = open('lum','r').read().replace('\n','')
print("lum=["+lum+"] arg=["+str(argv[1])+"]")
if (argv[1]=="up" and int(lum) <= 95):
    print("aumento lum")
    lum = str(int(lum)+5)
    command = "brightnessctl s "+lum
    system(command)
elif (argv[1]=="down" and int(lum) > 5):
    print("diminuzione lum")
    lum = str(int(lum)-5)
    command = "brightnessctl s "+lum
    system(command)

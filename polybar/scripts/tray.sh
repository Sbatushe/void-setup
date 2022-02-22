#!/bin/bash
# Custom Rofi Script per la systemtray
MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -theme ~/.config/rofi-themes/tray -i -p 'Tray ' \
-lines 4 \
-line-padding 10 \
-padding 20 \
-width 20% \
-xoffset -10 -yoffset 38 \
-location 3 \
-columns 1 \
<<< ">> Network|>> Pavucontrol|>> Session|>> Reboot|>> Poweroff")"
case "$MENU" in
  *Network) alacritty -e nmtui ;;
  *Powermgr) xfce4-power-manager-settings ;;
  *Pavucontrol) pavucontrol;;
  *Session) xfce4-session-logout;;
  *Logout) gnome-session;;
  *Reboot) doas  reboot;;
  *Poweroff) doas poweroff
  
esac

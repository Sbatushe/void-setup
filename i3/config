#  _ _____ 
# (_)___ / 
# | | |_ \ 
# | |___) |
# |_|____/ 
#
#ciao cecino <3

#+----------------------+
#| Desktop environment  |
#+----------------------+
# gestione sessione
exec ~/custom-sw/picom/picom &
exec feh --bg-scale ~/Immagini/cherryblossom.jpg &
exec setxkbmap it
exec ~/.config/polybar/launch.sh &
exec xsetroot -cursor_name left_ptr
exec /usr/libexec/xfce-polkit &
exec udiskie &
exec dunst &
exec "doas /root/.config/guix/current/bin/guix-daemon --build-users-group=guixbuild"
exec notify-send "Avvio completo";

#+----------------------+
#| Impostazioni varie   |
#+----------------------+

#modificatore Alt
set $mod Mod1

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# Font for window titles. Will also be used by the bar unless a different font is used in the bar {} block below.
font pango:DejaVu Sans Mono 9

#togli bordi e titlebar, da fare per i gap
for_window [class=".*"] border pixel 0

# gaps
#smart_gaps on
#smart_borders on
gaps inner 15
gaps outer 0

#+----------------------+
#| Finestre             |
#+----------------------+

# Alt+F4 (kill)
bindsym $mod+F4 kill

# Alt+Tab con rofi
bindsym $mod+Tab exec rofi -modi window -show window -theme ~/.config/rofi-themes/black2 -font "Terminus Regular 11" -lines 10

#Alacritty
bindsym Ctrl+t exec --no-startup-id alacritty
#bindsym Ctrl+t exec --no-startup-id xterm

#Rofi (avviatore)
bindsym Super_L exec j4-dmenu-desktop --dmenu="rofi -modi drun -show drun -theme ~/.config/rofi-themes/dmenu2.rasi"
#bindsym Super_L exec rofi -modi drun -show drun -theme ~/.config/rofi-themes/dmenu2.rasi

# cambiare focus finestre
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# invertire ordine finestre
bindsym $mod+Ctrl+Left move left
bindsym $mod+Ctrl+Down move down
bindsym $mod+Ctrl+Up move up
bindsym $mod+Ctrl+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+F11 fullscreen toggle

#modalità tiling
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+F10 floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

#+----------------------+
#| Workspaces           |
#+----------------------+

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"

# switch to workspace (modificati come in interfaccia grafica)
bindsym Ctrl+F1 workspace $ws1
bindsym Ctrl+F2 workspace $ws2
bindsym Ctrl+F3 workspace $ws3
bindsym Ctrl+F4 workspace $ws4

# move focused container to workspace
bindsym Ctrl+Shift+F1 move container to workspace $ws1
bindsym Ctrl+Shift+F2 move container to workspace $ws2
bindsym Ctrl+Shift+F3 move container to workspace $ws3
bindsym Ctrl+Shift+F4 move container to workspace $ws4

#+----------------------+
#| Restart/shutdown     |
#+----------------------+

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
#bindsym $mod+Shift+e exec "i3-nagbar -t warnhing -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

#restart polybar
bindsym Ctrl+$mod+p exec ~/.config/polybar/scripts/restart_polybar.sh

#+--------------------------+
#| Binding programmi/script |
#+--------------------------+

#screenshot
bindsym XF86WebCam exec xfce4-screenshooter

#invertire i colori (xcalib)
bindsym Menu exec --no-startup-id "xcalib -alter -i"

#volume e mic
bindsym XF86AudioRaiseVolume exec ~/.config/polybar/scripts/vol_up.sh 
bindsym XF86AudioLowerVolume exec ~/.config/polybar/scripts/vol_down.sh 
bindsym XF86AudioMute exec ~/.config/polybar/scripts/vol_mute.sh
bindsym XF86AudioMicMute exec  ~/.config/polybar/scripts/mic_mute.sh 

#luminosità (non serve se hai un powermanager)
#bindsym XF86MonBrightnessUp exec "python3 ~/.config/polybar/scripts/lum.py up"
#bindsym XF86MonBrightnessDown exec "python3 ~/.config/polybar/scripts/lum.py down"

#User tray
bindsym Ctrl+Escape exec ~/.config/polybar/scripts/tray.sh

#+-----------+
#| Resize    |
#+-----------+

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        bindsym Left resize shrink width 20 px or 5 ppt
        bindsym Down resize grow height 20 px or 5 ppt
        bindsym Up resize shrink height 20 px or 5 ppt
        bindsym Right resize grow width 20 px or 5 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return exec "i3-msg mode default; polybar-msg hook resize 1"
        bindsym Escape exec "i3-msg mode default; polybar-msg hook resize 1"
        bindsym $mod+r exec "i3-msg mode default; polybar-msg hook resize 1"
}
bindsym $mod+r exec "i3-msg mode resize; polybar-msg hook resize 2"

#+------------------------+
#| Regole personalizzate  |
#+------------------------+

#regole personalizzate
for_window [class="Gnome-calculator"] floating enable
for_window [class="Pavucontrol"] floating enable
for_window [class="Cheese"] floating enable
for_window [class="Alacarte"] floating enable
for_window [class="Gifview"] floating enable
for_window [class="wicd-client"] floating enable
for_window [class="Wicd-client"] floating enable
for_window [class="XSane"] floating enable

#+------+
#| Tema |
#+------+

#theming
set $bg-rosa    #DC322F
set $red        #FF0000
set $bg-black   #000000
set $bg-green   #00FF00
set $text-color #ffffff
set $blue		#333399
set $gray		#333333
set $white		#FFFFFF

#                         #border     #background   #text        #indicator
client.focused            $black      $white        $text-color  $red
client.unfocused          $bg-black   $bg-black     $text-color  $bg-black
client.focused_inactive   $bg-black   $bg-black     $text-color  $bg-black

#+----------------------+
#| Requisiti            |
#+----------------------+
#| i3-gaps
#| |
#| +-> rofi
#| +-> feh
#| +-> dunst
#| +-> udiskie
#|      |
#|      +-> ntfs-3g
#|
#| setxkbmap
#| polybar
#| |
#| +-> lm_sensors
#| +-> font-awesome 4
#| +-> iosevka-nerd-font
#| +-> alsa-utils -> amixer + aplay
#| 
#| picom
#| lxappearance
#| NetworkManager
#| alacritty
#| |
#| +-> fixed-font
#| 
#| xcalib
#| python3 
#| Cose GTK
#| |
#| +-> cantarell-fonts
#| +-> kora icons
#| +-> orchis theme
#+----------------------+

#+----------------------+
#| Flatpaks             |
#+----------------------+
#| I flatpak hanno bisogno di una sessione dbus
#| Per ottenere questa cosa bisogna andare in 
#| /usr/share/xsessions/i3.desktop
#| e modificare la linea di Exec in 
#| Exec=dbus-run-session i3
#|
#| con j4 + questa cosa si leggono i flatpak (mettilo in config.fish)
#| exec "set -ax XDG_DATA_DIRS /home/sbatushe/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
#| 
#+----------------------+

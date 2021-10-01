# Void setup
Il mio setup di Void Linux:

## Fish shell setup
```
sudo xbps-install -y fish-shell
fish
```
da eseguire a mano da dentro fish:
```
chsh -s ('which fish')
```
scorciatoie fish:
```
mkdir /home/sbatushe/.config
mkdir /home/sbatushe/.config/fish
mkdir /home/sbatushe/.config/fish/functions;
cp fish-functions/battery.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/emerge.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/lum.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/tutorial.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/uni.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/xi.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/xq.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/xr.fish /home/sbatushe/.config/fish/functions/
```

## Micro editor
```
sudo xbps-install -y curl;
curl https://getmic.ro | bash;
sudo mv micro /usr/bin/;
```
entra in micro ed usa Ctrl+e, poi:
```
set colorscheme simple
```
## Doas
```
sudo xbps-install -y opendoas;
sudo cp doas.conf /etc/;
```
oppure, configurare a mano con:
```
sudo micro /etc/doas.conf
```
e scrivere (con un ritorno a capo alla fine):
```
permit nopass sbatushe as root
```

## Programmi vari
```
sudo xbps-install -y mc neofetch htop flatpak zip unzip tlp evince mirage alacritty mesa-dri terminus-font;
```

## GNOME
```
sudo xbps-install -y gnome-40.0_2
sudo ln -s /etc/sv/NetworkManager /var/service/
sudo ln -s /etc/sv/gdm var/service/
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/bluetoothd /var/service/
```

## Terminale Alacritty
```
mkdir /home/sbatushe/alacritty;
cp alacritty.yml /home/sbatushe/alacritty/;
```

## Sway wm con bordi (incompleto)
```
sudo xbps-install git meson wlroots wayland pcre json-c pango cairo gdk-pixbuf-2 gcc cmake pkg-config 
sudo xbps-install wayland-protocols scdoc libjson-c-devel pcre-devel wayland-devel libxkbcommon-devel cairo-devel pango-devel gdk-pixbuf-devel-2.40.0_3 libevdev-devel libinput-devel gegl-devel bash-completion
git clone https://github.com/swaywm/wlroots
cd wlroots
meson build/
sudo ninja -C build/ install
cd ..
git clone https://github.com/fluix-dev/sway-borders
cd sway-borders
meson build/

sudo xbps-remove gcc cmake pkg-config scdoc meson libjson-c-devel pcre-devel wayland-devel libxkbcommon-devel cairo-devel pango-devel gdk-pixbuf-devel-2.40.0_3 libevdev-devel libinput-devel gegl-devel bash-completion
```

## Flatpak


## Pulizia finale
```
sudo xbps-remove -oO;
```

#SETUP SCRIPT

#fish
echo "[installing fish shell]";
sudo xbps-install -y fish-shell;
#da eseguire a mano da dentro fish:
chsh -s ('which fish');
echo "OK";

#scorciatoie fish?
echo "[fish setup]";
mkdir /home/sbatushe/.config;
mkdir /home/sbatushe/.config/fish;
mkdir /home/sbatushe/.config/fish/functions;
cp fish-functions/battery.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/emerge.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/lum.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/tutorial.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/uni.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/xi.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/xq.fish /home/sbatushe/.config/fish/functions/;
cp fish-functions/xr.fish /home/sbatushe/.config/fish/functions/;
echo "OK";

#micro
echo "[installing micro]";
sudo xbps-install -y curl;
curl https://getmic.ro | bash;
sudo mv micro /usr/bin/;
# entra in micro ed usa Ctrl+e, poi set colorscheme simple
echo "OK";

#doas
echo "[installing doas]";
sudo xbps-install -y opendoas;
sudo cp doas.conf /etc/;
#sudo micro /etc/doas.conf
#permit nopass sbatushe as root
echo "OK";

#misc
echo "[installing misc programs]";
sudo xbps-install -y mc neofetch htop flatpak zip unzip tlp evince mirage alacritty gnome-40.0_2 mesa-dri terminus-font;

#alacritty
echo "[alacritty setup]";
mkdir /home/sbatushe/alacritty;
cp alacritty.yml /home/sbatushe/alacritty/;
echo "OK";

#flatpaks

sudo xbps-remove -oO; #apt autoremove

#services and GUI
echo '[GUI setup]'
sudo ln -s /etc/sv/NetworkManager /var/service/;
sudo ln -s /etc/sv/gdm var/service/;
sudo ln -s /etc/sv/dbus /var/service/;
sudo ln -s /etc/sv/bluetoothd /var/service/;

#Sway e custom DE


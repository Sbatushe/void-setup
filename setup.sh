#SETUP SCRIPT

#fish
echo "[installing fish shell]";
sudo xbps-install -y fish-shell;
chsh -s /bin/fish;

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

#micro
echo "[installing micro]";
sudo xbps-install -y curl;
curl https://getmic.ro | bash;
sudo mv micro /usr/bin/;
# entra in micro ed usa Ctrl+e, poi set colorscheme simple

#doas
echo "[installing doas]";
sudo xbps-install -y opendoas;
sudo cp doas.conf /etc/;

#sudo micro /etc/doas.conf
#permit nopass sbatushe as root

#altro
echo "[installing misc]";
sudo xbps-install -y mc neofetch htop flatpak zip unzip tlp;

#GUI
echo "[GUI setup]";
sudo xbps-install -y sway evince mirage alacritty;

#alacritty
echo "[alacritty setup]";
mkdir /home/sbatushe/alacritty;
cp alacritty.yml /home/sbatushe/alacritty/;

#flatpaks


sudo xbps-remove -oO; #apt autoremove

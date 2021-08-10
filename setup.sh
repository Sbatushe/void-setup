#DA ESEGUIRE A MANO
#primo aggiornamento

sudo xbps-install -u xbps
sudo xbps-install -Su #update
#sudo xbps-install git
#git clone ...
#cd ....
#sudo ./...

#fish
echo "[installing fish shell]"
sudo xbps-install fish-shell
chsh -s /bin/fish

#scorciatoie fish?
echo "[fish setup]"
cp fish-functions/battery.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/emerge.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/lum.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/tutorial.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/uni.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/xi.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/xq.fish /home/sbatushe/.config/fish/functions/
cp fish-functions/xr.fish /home/sbatushe/.config/fish/functions/

#micro
echo "[installing micro]"
sudo xbps-install curl
curl https://getmic.ro | bash
sudo mv micro /usr/bin/
# entra in micro ed usa Ctrl+e, poi set colorscheme simple

#doas
echo "[installing doas]"
sudo xbps-install opendoas
sudo cp doas.conf /etc/

#sudo micro /etc/doas.conf
#permit nopass sbatushe as root
doas ls #vedi se funzia

#altro
echo "[installing misc]"
doas xbps-install mc neofetch htop flatpak zip unzip tlp

#GUI
echo "[GUI setup]"
doas xbps-install sway evince mirage alacritty

#alacritty
echo "[alacritty setup]"
mkdir /home/sbatushe/alacritty
cp alacritty.yml /home/sbatushe/alacritty/

#flatpaks


xbps-remove -oO #apt autoremove

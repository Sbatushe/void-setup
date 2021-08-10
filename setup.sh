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

#micro
echo "[installing micro]"
sudo xbps-install curl
curl https://getmic.ro | bash
sudo mv micro /usr/bin/
# entra in micro ed usa Ctrl+e, poi set colorscheme simple

#doas
echo "[installing doas]"
sudo xbps-install opendoas
sudo mv doas.conf /etc/

#sudo micro /etc/doas.conf
#permit nopass sbatushe as root
doas ls #vedi se funzia

#altro
echo "[installing misc]"
doas xbps-install mc neofetch htop flatpak zip unzip tlp

#GUI
echo "[GUI setup]"
doas xbps-install sway evince mirage alacritty

xbps-remove -oO #apt autoremove

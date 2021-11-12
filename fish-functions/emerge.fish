function emerge
    set_color green;  echo -n "* "; set_color normal; echo "doas xbps-install -Su";
    doas xbps-install -Su
    set_color green;  echo -n "* "; set_color normal; echo "flatpak update";
    flatpak update;
    set_color green;  echo -n "* "; set_color normal; echo "doas xbps-remove -oO";
    doas xbps-remove -oO;
end

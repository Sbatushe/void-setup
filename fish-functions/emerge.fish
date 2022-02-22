function emerge
    set os (cat /etc/os-release | awk 'NR==3 {print $1}')
    set_color cyan;  echo -n " - "; set_color normal; echo $os;

    if [ $os = "ID=fedora" ]
        set_color green;  echo -n " * "; set_color normal; echo "doas hostname T410";
        doas hostname T410;
        set_color green;  echo -n " * "; set_color normal; echo "doas dnf update";
        doas dnf update;
        set_color green;  echo -n " * "; set_color normal; echo "flatpak update";
        flatpak update;
        set_color green;  echo -n " * "; set_color normal; echo "doas dnf autoremove";
        doas dnf autoremove;
        set_color green;  echo -n " * "; set_color normal; echo "flatpak uninstall --unused";
        flatpak uninstall --unused;
    end

    if [ $os = "DISTRIB_ID=\"void\"" ]
        set_color green;  echo -n " * "; set_color normal; echo "doas xbps-install -Su";
        doas xbps-install -Su
        set_color green;  echo -n " * "; set_color normal; echo "flatpak update";
        flatpak update;
        set_color green;  echo -n " * "; set_color normal; echo "doas xbps-remove -oO";
        doas xbps-remove -oO;
        set_color green;  echo -n " * "; set_color normal; echo "flatpak uninstall --unused";
        flatpak uninstall --unused;    
    end
end

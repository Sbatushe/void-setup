function emerge
    #doas apt update;
    #doas apt upgrade;
    #doas apt dist-upgrade;
    set_color green;  echo -n "* "; set_color normal; echo "doas xbps-install -Su";
    doas xbps-install -Su
    set_color green;  echo -n "* "; set_color normal; echo "flatpak update";
    flatpak update;
    set_color green;  echo -n "* "; set_color normal; echo "doas xbps-remove -oO";
    doas xbps-remove -oO;
    #echo "[orphan packages]";
    #doas deborphan;
    #doas apt clean;
    #echo "[optimizing]";
    #killall /usr/libexec/gsd-wacom;
    #killall /usr/libexec/gsd-printer;
    #killall gnome-software;
    #killall goa-daemon;
    #killall goa-identity-service;
    #killall goa-volume-monitor;
    #killall tracker-miner-fs;
    #killall flatpak-session-helper;
    #killall /usr/libexec/evolution-addressbook-factory;
    #killall /usr/libexec/evolution-calendar-factory;
    #killall /usr/libexec/evolution-source-registry;
    #killall /usr/libexec/evolution-data-server/evolution-alarm-notify;
end

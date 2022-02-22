function lssv

    set os (cat /etc/os-release | awk 'NR==3 {print $1}')
    set_color cyan;  echo -n " - "; set_color normal; echo $os;

    if [ $os = "ID=fedora" ]
        echo " -  Available services";
        sleep 1;
        set_color green;  echo -n " * "; set_color normal; echo "systemctl list-units";
        systemctl list-units;

        echo " -  Available services";
        sleep 1;
        set_color green;  echo -n " * "; set_color normal; echo "systemctl --type=service";
        systemctl --type=service;

        echo " -  Running services";
        sleep 1;
        set_color green;  echo -n " * "; set_color normal; echo "systemctl list-units --type=service --state=runing";
        systemctl list-units --type=service --state=runing;
    end

    if [ $os = "DISTRIB_ID=\"void\"" ]
        echo "";
        echo "[Servizi attivabili]";
        ls /etc/sv/
        echo "";
        echo "[Servizi attivi]";
        ls /var/service/
    end
end

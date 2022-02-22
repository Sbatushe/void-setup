function rmsv
    set os (cat /etc/os-release | awk 'NR==3 {print $1}')
    set_color cyan;  echo -n " - "; set_color normal; echo $os;

    if [ $os = "ID=fedora" ]
        set_color green;  echo -n " * "; set_color normal; echo "doas systemctl stop" $argv;
        doas systemctl stop $argv;
        set_color green;  echo -n " * "; set_color normal; echo "doas systemctl disable" $argv;
        doas systemctl disable $argv;
    end

    if [ $os = "DISTRIB_ID=\"void\"" ]
        set_color green;  echo -n "* "; set_color normal; echo -n "doas rm /var/service/"; set_color green;  echo $argv; set_color red;
        doas rm /var/service/$argv;
    end
end


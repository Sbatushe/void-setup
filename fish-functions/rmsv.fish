function rmsv
    set_color green;  echo -n "* "; set_color normal; echo -n "doas rm /var/service/"; set_color green;  echo $argv; set_color red;
    doas rm /var/service/$argv;
    set_color green;  echo -n "* "; set_color normal; echo -n "doas rm /etc/sv/"; set_color green;  echo $argv; set_color red;
    doas rm /etc/sv/$argv;
end

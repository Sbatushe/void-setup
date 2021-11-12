function newsv
    set_color green;  echo -n "* "
    set_color normal; echo -n "doas ln -s /etc/sv/";
    set_color green;  echo -n $argv;
    set_color normal; echo " /var/service/";
    doas ln -s /etc/sv/$argv /var/service/
end

function xq --wraps=xbps-query

    set os (cat /etc/os-release | awk 'NR==3 {print $1}')
    set_color cyan;  echo -n " - "; set_color normal; echo $os;

    if [ $os = "ID=fedora" ]
        set_color green;  echo -n " * "; set_color normal; echo "doas dnf search" $argv;
        doas dnf search $argv;
    end

    if [ $os = "DISTRIB_ID=\"void\"" ]
        xbps-query -Rs $argv;
    end
end

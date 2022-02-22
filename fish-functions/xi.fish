function xi 

    set os (cat /etc/os-release | awk 'NR==3 {print $1}')
    set_color cyan;  echo -n " - "; set_color normal; echo $os;

    if [ $os = "ID=fedora" ]
        set_color green;  echo -n " * "; set_color normal; echo "doas dnf install" $argv "--setopt=install_weak_deps=False"; 
        doas dnf install $argv --setopt=install_weak_deps=False;
    end

    if [ $os = "DISTRIB_ID=\"void\"" ]
        xbiw $argv;    
    end
end

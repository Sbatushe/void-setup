function lssv
    echo "";
    echo "[Servizi attivabili]";
    ls /etc/sv/
    echo "";
    echo "[Servizi attivi]";
    ls /var/service/
end

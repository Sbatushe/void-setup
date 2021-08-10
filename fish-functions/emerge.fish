function emerge
    echo "[updating]";
    xi -Su;
    doas flatpak update;
    echo "[cleaning]";
    xr -oO;
end

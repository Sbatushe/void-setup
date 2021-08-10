function xi --wraps=xbps-install --description 'alias xi xbps-install'
  doas xbps-install $argv; 
end

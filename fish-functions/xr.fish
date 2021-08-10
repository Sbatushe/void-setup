function xr --wraps=xbps-remove --description 'alias xr xbps-remove'
  doas xbps-remove $argv; 
end

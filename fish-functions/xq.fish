function xq --wraps=xbps-query --description 'alias xq xbps-query'
  xbps-query -Rs $argv; 
end

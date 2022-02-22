#!/bin/sh

if [ "$(i3-msg -t get_workspaces | jq '.[] | select(.focused).num')" = "$1" ];then
    echo ""
fi
if [ "$(i3-msg -t get_workspaces | jq '.[] | select(.focused).num')" != "$1" ];then
    if [ "$(i3-msg -t get_workspaces | jq '.[] | select(.name).name' | grep $1)" = "\"$1\"" ];then
        echo ""
    else
        echo "    "
    fi
fi
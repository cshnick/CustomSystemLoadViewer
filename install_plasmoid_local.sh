#!/bin/bash

#PLASMOID_ID='org.cshnick.sensors_ex'
_command=$1
_plasmoid_dir_name=$2
_plasmoid_id=$3

if [[ -n $(plasmapkg2 --list 2>/dev/null | grep ${_plasmoid_id}) ]] ; then
    _command=upgrade
fi

if [[ $1 = remove ]] ; then
    _command=remove
fi

kpackagetool5 -t Plasma/Applet --${_command} ${_plasmoid_dir_name}
reload-plasma &>/dev/null

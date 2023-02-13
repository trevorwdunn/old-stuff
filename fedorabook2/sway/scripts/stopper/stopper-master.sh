#!/bin/bash
#work in progress


status=$(cat ~/.config/sway/scripts/stopper/status)

if [ "$status" == "on" ] 
then
    exec "~/.config/sway/scripts/stopper/stopper.sh STOP"
    echo "on" > /home/trevor/.config/sway/scripts/stopper/status
else
    exec "~/.config/sway/scripts/stopper/stopper.sh"
    echo "off" > /home/trevor/.config/sway/scripts/stopper/status
fi

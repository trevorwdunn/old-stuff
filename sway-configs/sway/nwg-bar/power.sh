#!/bin/bash

mode=$(cat /home/jerome/.config/sway/theme_switch/mode)

if [ $mode == "dark" ] 
then
    nwg-bar -t power.json -s power-dark.css
else
    nwg-bar -t power.json -s power_light.css
fi


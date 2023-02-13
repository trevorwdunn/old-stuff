#!/bin/bash

#   Disable all monitors    #
swaymsg output "*" disable

#   Laptop  #
swaymsg output "'Unknown 0x07DB 0x00000000'" enable

/home/trevor/.config/sway/theme_switch/switcher.sh $(cat /home/jerome/.config/sway/theme_switch/mode)

#!/bin/bash

#   Disable all monitors    #
swaymsg output "*" disable

#    Center    #
swaymsg output "'Hewlett Packard HP E231 6CM5071CJJ'" position 0 840 transform 0 mode 1920x1080 enable

#    Right    #
swaymsg output "'Hewlett Packard HP E231 6CM4431XGD'" position 1920 0 transform 270 mode 1920x1080 enable

/home/trevor/.config/sway/theme_switch/switcher.sh $(cat /home/jerome/.config/sway/theme_switch/mode)

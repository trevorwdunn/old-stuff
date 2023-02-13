#!/bin/bash

WAYLAND_DISPLAY=wayland-0
WP_PATH=~/.config/sway/wallpapers/oldchosen
SWAYSOCK=$(find /run/user/1000/sway*sock)

curr=$(cat ~/.config/sway/wallpapers/current)

if [ "$curr" == "StrangerThings01" ]
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/seatrain.png fill
    echo "seatrain" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "seatrain" ]
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/maintenancemode.png fill
    echo "maintenancemode" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "maintenancemode" ]
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/trains.png fill
    echo "trains" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "trains" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/moon.png fill
    echo "moon" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "moon" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/budapest.jpg fill
    echo "budapest" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "budapest" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/nature01.jpg fill
    echo "nature01" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "nature01" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/StrangerThings01.jpg fill
    echo "StrangerThings01" > ~/.config/sway/wallpapers/current
fi

exit 0

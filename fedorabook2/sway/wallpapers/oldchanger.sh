#!/bin/bash

WAYLAND_DISPLAY=wayland-0
WP_PATH=~/.config/sway/wallpapers/chosen
SWAYSOCK=$(find /run/user/1000/sway*sock)

curr=$(cat ~/.config/sway/wallpapers/current)

if [ "$curr" == "trains" ]
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
fi

exit 0

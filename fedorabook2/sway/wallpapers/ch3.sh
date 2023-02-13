#!/bin/bash
#

WAYLAND_DISPLAY=wayland-0
WP_PATH=~/.config/sway/wallpapers/fedora

curr=$(cat ~/.config/sway/wallpapers/current)

if [ "$curr" == "metal" ] 
then
	/usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/basic.png fill
	echo "basic" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "basic" ] 
then 
	/usr/bin/swaymsg -s $SWAYSOCK output "*" bg $BG_PATH/metal.jpg fill
	echo "metal" > ~/.config/sway/wallpapers/current
elif [ "$curr" == "metal" ] 
then 
	/usr/bin/swaymsg -s $SWAYSOCK output "*" $WP_PATH/infinity.jpg fill
	echo "infinty" > ~/.config/sway/wallpapers/current
fi

exit 0

#!/bin/bash

WAYLAND_DISPLAY=wayland-0
WP_PATH=~/.config/sway/wallpapers/starwars
SWAYSOCK=$(find /run/user/1000/sway*sock)

curr=$(cat ~/.config/sway/wallpapers/currentsw)

if [ "$curr" == "Revan03" ]
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Collage01.jpg fill
    echo "Collage01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Collage01" ]
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Magmatrooper01.jpg fill
    echo "Magmatrooper01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Magmatrooper01" ]
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/TIEFighter01.jpg fill
    echo "TIEFighter01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "TIEFighter01" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Endor01.jpg fill
    echo "Endor01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Endor01" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Revan01.jpg fill
    echo "Revan01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Revan01" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/TIEFighter02.jpg fill
    echo "TIEFighter02" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "TIEFighter02" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Vader01.jpg fill
    echo "Vader01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Vader01" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Revan02.jpg fill
    echo "Revan02" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Revan02" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/LastStand01.jpg fill
    echo "LastStand01" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "LastStand01" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Vader05.jpg fill
    echo "Vader05" > ~/.config/sway/wallpapers/currentsw
elif [ "$curr" == "Vader05" ] 
then
    /usr/bin/swaymsg -s $SWAYSOCK output "*" bg $WP_PATH/Revan03.jpg fill
    echo "Revan03" > ~/.config/sway/wallpapers/currentsw





fi

exit 0

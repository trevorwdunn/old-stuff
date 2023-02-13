#!/bin/bash

if [ $1 == "poweroff" ]
then
    systemctl poweroff
elif [ $1 == "reboot" ] 
then
    systemctl reboot
elif [ $1 == "hibernate" ]
then 
    systemctl hibernate
elif [ $1 == "suspend" ]
then 
    systemctl suspend
fi

killall nwg-bar

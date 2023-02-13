#!/bin/bash

lines=$(cat "/home/jerome/.config/qutebrowser/config.py" | wc -l)
let "lines=lines-1"

cat "/home/jerome/.config/qutebrowser/config.py" | head -n $lines > "/home/jerome/.config/sway/theme_switch/qute_backup"

if [ $1 == "dark" ]
then
    echo "config.set(\"colors.webpage.darkmode.enabled\", True)" >> "/home/jerome/.config/sway/theme_switch/qute_backup"
else
    echo "config.set(\"colors.webpage.darkmode.enabled\", False)" >> "/home/jerome/.config/sway/theme_switch/qute_backup"
fi

rm "/home/jerome/.config/qutebrowser/config.py"
cp "/home/jerome/.config/sway/theme_switch/qute_backup" "/home/jerome/.config/qutebrowser/config.py"

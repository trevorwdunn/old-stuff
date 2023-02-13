#!/bin/bash

lines=$(cat "/home/jerome/.vimrc" | wc -l)
let "lines=lines-1"

cat "/home/jerome/.vimrc" | head -n $lines > "/home/jerome/.config/sway/theme_switch/backup"
echo "set background=$1" >> "/home/jerome/.config/sway/theme_switch/backup"
rm "/home/jerome/.vimrc"
cp "/home/jerome/.config/sway/theme_switch/backup" "/home/jerome/.vimrc"

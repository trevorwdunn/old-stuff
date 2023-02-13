#!/bin/bash

if [ $1 == dark ]
then
    #gsettings set org.gnome.desktop.interface gtk-theme 'Orchis-dark-compact'
    gsettings set org.gnome.desktop.interface gtk-theme 'Orchis-dark'
    gsettings set org.gnome.desktop.interface icon-theme 'Tela-blue-dark'
    /home/jerome/.config/sway/display_scripts/set-bg.sh dark
    /home/jerome/.config/sway/alacritty/switcher.sh dark
    /home/jerome/.config/sway/theme_switch/vim_switcher.sh dark
    /home/jerome/.config/sway/theme_switch/qute_switcher.sh dark
    echo "dark" > /home/jerome/.config/sway/theme_switch/mode
else
    #gsettings set org.gnome.desktop.interface gtk-theme 'Orchis-light-compact'
    gsettings set org.gnome.desktop.interface gtk-theme 'Orchis-light'
    gsettings set org.gnome.desktop.interface icon-theme 'Tela-blue'
    /home/jerome/.config/sway/display_scripts/set-bg.sh light
    /home/jerome/.config/sway/alacritty/switcher.sh light
    /home/jerome/.config/sway/theme_switch/vim_switcher.sh light
    /home/jerome/.config/sway/theme_switch/qute_switcher.sh light
    echo "light" > /home/jerome/.config/sway/theme_switch/mode
fi

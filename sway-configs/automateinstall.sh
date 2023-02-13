#!bin/bash

mkdir Desktop Documents Downloads Pictures Videos .config/ .hidden/

mv /home/trevor/sway-configs /home/trevor/swayconfigs

mv /home/trevor/swayconfigs /home/trevor/.hidden/

mv /home/trevor/.hidden/swayconfigs/Wallpapers /home/trevor/Pictures/

mv /home/trevor/.hidden/swayconfigs/alacritty /home/trevor/.hidden/swayconfigs/wofi /home/trevor/.hidden/swayconfigs/waybar /home/trevor/.hidden/swayconfigs/sway /home/trevor/.hidden/swayconfigs/fish  /home/trevor/.config/

pacman -S sway alacritty firefox wofi waybar fish git nemo zip unzip kdeconnect tlp pulseaudio pavucontrol obs-studio flameshot vlc thunderbird discord signal-desktop vim htop

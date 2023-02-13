#!/bin/bash

mode=$(cat /home/jerome/.config/sway/theme_switch/mode)

if [ $mode == "dark" ]
then
    bemenu-run -i --tb "#2c2c2c" --tf "#ffffff" --fb "#2c2c2c" --ff "#ffffff" --nb "#2c2c2c" --nf "#ffffff" --hb "#1a73e8" --hf "#ffffff" -p ""
else
    bemenu-run -i --tb "#bdbdbd" --tf "#000000" --fb "#bdbdbd" --ff "#000000" --nb "#bdbdbd" --nf "#000000" --hb "#1a73e8" --hf "#000000" -p ""
fi

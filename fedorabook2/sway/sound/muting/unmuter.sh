#!/bin/bash

pacmd list-sinks | grep 'name:'  | cut -b 9- | rev | cut -b 2- | rev > /home/jerome/.config/sway/sound/muting/sinks.txt

while IFS= read -r sink
do
    echo $sink
    pactl set-sink-mute $sink 0 
done < "/home/trevor/.config/sway/sound/muting/sinks.txt"

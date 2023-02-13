#!/bin/bash

#pacmd list-sinks | grep mute -n | cut -b 9- > /home/jerome/.config/sway/sound/muting/sinks.txt
#pacmd list-sinks | grep 'name:' -n  | cut -b 9- | rev | cut -b 2- | rev > /home/jerome/.config/sway/sound/muting/sinks.txt

pacmd list-sinks |grep "mute\|name: " | awk '{print $2}' | sed 's/>\|<//g' > /home/jerome/.config/sway/sound/muting/sinks.txt

sink=""

while IFS= read -r line
do
    if [ $line != no ] && [ $line != yes ] 
    then
        sink=$line
    else
        if [ $line == no ]
        then
            pactl set-sink-mute $sink on
            echo "$sink is $line, muting"
        else
            pactl set-sink-mute $sink off
            echo "$sink is $line, unmuting"
        fi
    fi

done < "/home/trevor/.config/sway/sound/muting/sinks.txt"

#!bin/bash

p_list=$(ps aux | awk '/dnf/ {print $2}')

for proc in $p_list
do 
    if [[ $1 == "stop" ]] 
    then
        kill -STOP $proc
    else
        kill -CONT $proc
    fi
done

#!/bin/bash

if [ $1 == "dark" ] 
then 
    alacritty-themes Atelierforest.dark
else
    alacritty-themes Atelierforest.light
fi

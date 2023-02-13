#!/bin/bash

if [ $1 == dark ]
then
    gammastep -O 3500K
else
    gammastep -O 6500K
fi

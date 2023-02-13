#!/bin/bash

SESSION=control

tmux new-session -d -s $SESSION 
tmux rename-window -t $SESSION:0 'music'
tmux new-window -t $SESSION:1 -n 'wireless control'

tmux select-window -t $SESSION:0
tmux send-keys 'pulsemixer' C-m
tmux split-window -h
sleep 0.25s
tmux send-keys 'cmus' C-m

tmux select-window -t $SESSION:1
tmux split-window -h
tmux send-keys 'clear && iwctl' C-m
tmux send-keys 'station wlan0 show' C-m
tmux select-pane -t 0
tmux send-keys 'clear && bluetoothctl' C-m
tmux send-keys 'power on' C-m

tmux select-window -t $SESSION:0

tmux attach -t $SESSION

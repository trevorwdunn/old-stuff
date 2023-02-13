#!/bin/bash
actions="toggle|prev|next|forw|back"

# Check for correct usage
if [[ $# -ne 1 || ! "$1" =~ ^($actions)$ ]]; then
  echo "Usage: "
  echo "${0##*/} [${actions[*]}]"
  exit 1
fi

# Get focused process' name
pid=$(xdotool getactivewindow getwindowpid)
process=$(ps -p $pid -o comm=)

case $process in
# Control mpv if focused
mpv)
  case $1 in
  toggle)
    ydotool key space
    ;;
  prev)
    ydotool key less
    ;;
  next)
    ydotool key greater
    ;;
  forw)
    ydotool click 4
    ;;
  back)
    ydotool click 5
    ;;
  esac
  notify-send "; $1"
;;
# Control cmus per default
*)
  case $1 in
  toggle)
    cmus-remote -u
    ;;
  prev)
    cmus-remote -r
    ;;
  next)
    cmus-remote -n
    ;;
  esac
;;
esac


#/usr/bin/sh

if [ -z "$1" ]
  then
    curWal=$(/run/current-system/sw/bin/ls ~/Pictures/Wallpapers/currentWalls | shuf -n 1)
else
    curWal=$1
    echo $1
fi
echo $curWal

wal -q -i ~/Pictures/Wallpapers/currentWalls/$curWal
# sleep 0.1
wallpaper=$(cat ~/.cache/wal/wal)
swww img "$wallpaper" --transition-duration=0.1 --transition-fps=60
if [[ $(pidof dunst) > 0 ]]; then
  pkill dunst
fi
dunst & disown

if [[ $(pidof waybar) > 0 ]]; then
  pkill waybar
fi
# sleep 1
waybar & disown

notify-send "New Theme and Wallpaper added."

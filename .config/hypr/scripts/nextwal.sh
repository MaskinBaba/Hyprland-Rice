#/usr/bin/sh

wal -q -i ~/Pictures/Wallpapers/currentWalls/

wallpaper=$(cat ~/.cache/wal/wal)

cp ~/.cache/wal/colors.css ~/.config/waybar/colors.css

if [[ $(pidof dunst) > 0 ]]; then
  killall dunst
  dunst & disown
else
  dunst & disown
fi

if [[ $(pidof waybar) > 0 ]]; then
  killall waybar
  waybar & disown
else
  waybar & disown
fi



swww img "$wallpaper" --transition-duration=0.5 --transition-fps=60


notify-send "New Theme and Wallpaper added."

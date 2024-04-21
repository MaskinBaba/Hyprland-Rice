#/bin/sh

selected=$(rofi -dmenu -p "Search:")

if [[ -z $selected ]]; then
	exit
else
	firefox --new-tab --search "$selected"
fi

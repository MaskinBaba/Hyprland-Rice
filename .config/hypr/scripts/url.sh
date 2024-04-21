#/bin/sh

selected=$(rofi -dmenu -p "URL:")

if [[ -z $selected ]]; then
	exit
else
	firefox --new-tab $selected
fi

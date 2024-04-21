
if mountpoint /home/AltairStore >/dev/null; then
	selected=$(echo "Unmount the Altair Storage
Cancel the operation
Change Directory" | rofi -dmenu -p "SFTP: " -config "~/.config/rofi/config.rasi")
	if [[ -z $selected ]]; then
		notify-send "Cancelled the operation"
		exit
	elif [[ "$selected" == *"Unmount"* ]]; then
		fusermount -u /home/AltairStore && notify-send "Unmounted Altair Storage"
	elif [[ "$selected" == *"Change Directory"* ]]; then
		alacritty -t
	elif [[ "$selected" == *"Cancelled"* ]]; then
		notify-send "Cancelled the operation"
		exit
	fi
else
	sshfs store@maskinscache.xyz:/home/store /home/AltairStore
	notify-send "Altair Storage is mounted"
fi

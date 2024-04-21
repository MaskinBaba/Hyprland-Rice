#/usr/bin/sh

if [[ $(waydroid status) == *"STOPPED"* ]]; then
	waydroid session start & disown && notify-send "Waydroid session is Started." && cont=1
#else 
#	waydroid session stop & disown && notify-send "Session is Stopped."
fi

if [[ cont==1 ]]; then
	waydroid show-full-ui
fi

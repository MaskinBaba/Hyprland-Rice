# /usr/bin/sh

# notify-send " $DUNST_APP_NAME esehi"
# notify-send "Hello There! F"

appname="App"

if [[ $DUNST_APP_NAME == *"discord"* ]]; then
    appname=" "
fi

# echo "App:   $DUNST_APP_NAME  " >> ~/.cache/eww_custom/notifications.txt
echo "$appname  |  $DUNST_SUMMARY" >> ~/.cache/eww_custom/notifications.txt
echo "    >  $DUNST_BODY" >> ~/.cache/eww_custom/notifications.txt

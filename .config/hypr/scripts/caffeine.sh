# !/bin/bash

cxset="$(xset q)"
sub1="DPMS is Enabled"
sub2="DPMS is Disabled"

Con () {
	xset -dpms s off
}

Coff () {
	xset +dpms s on
}

toggle_caffeine () {
	if [[ "$cxset" == *"$sub1"* ]]; then
		Con
	elif [[ "$cxset" == *"$sub2"* ]]; then
		Coff
	fi
}

while getopts ":t" opt; do
	case $opt in
		t)
			toggle_caffeine
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			;;
	esac
done

feh --bg-scale $HOME/Pictures/bg.png
while true; do
	vol=$( amixer -D pulse get Master | grep 'Left:' | awk -F'[][]' '{ print $2 }')
	echo "${vol}"
	xsetroot -name "[$(acpi)][VOL: ${vol}][$( date +"%F %R" )]"
	sleep .1
done

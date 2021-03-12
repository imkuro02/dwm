# start dunst daemon	
dunst &
# set bg
feh --bg-scale $HOME/Pictures/bg.jpg
# some mouse config
xinput set-prop 8 295 0 1
while true; do
	layout=$(setxkbmap -query | grep "layout" | tail -c 3)
	vol=$( amixer -D pulse get Master | grep 'Left:' | awk -F'[][]' '{ print $2 }')
	xsetroot -name "[VOL: ${vol}][$layout][$( date +"%F %R" )]"
	sleep .1
done

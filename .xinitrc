autostart="xcompmgr"
xrandr -s 1920x1080
setbg &
for program in $autostart; do
	pidof -s "$pogram" || "$program" &
done >/dev/null 2>&1
dwmblocks &

exec dwm

#/scripts/brightness.sh
if [ $1 == "up" ]; then
    xbacklight -inc 10
else
    xbacklight -dec 10
fi

#this depends on ypour hardware
output="$(cat /sys/class/backlight/nvidia_0/actual_brightness)"

notify-send -t 100 -u low Brightness "${output}"

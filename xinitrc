# Filename: .inputrc

### Displays
# xrandr --output DP-0 --primary
# xrandr --output DP-0 --right-of DVI-D-0
# xrandr --output HDMI-0 --right-of DP-0

### Keyboard
setxkbmap -layout us,es -option 'grp:win_space_toggle'
numlockx on

### Udiskie automount
udiskie --automount --no-notify &

### Start xorg session
exec dbus-launch i3

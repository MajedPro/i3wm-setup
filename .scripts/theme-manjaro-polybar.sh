cp ~/.config/i3/Manjaro-Polybar-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Manjaro-Polybar-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources
#i3-msg restart &&
#sleep 2s; killall nm-applet && nm-applet &&
#sleep 1s; killall dunst & notify-send "restart dunst"

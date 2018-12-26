cp ~/.config/i3/Mint-Y-Dark-Polybar/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/config ~/.config/i3/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Mint-Y-Dark-Polybar/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources
#i3-msg restart &&
#sleep 2s; killall nm-applet && nm-applet &&
#sleep 1s; killall dunst & notify-send "restart dunst"

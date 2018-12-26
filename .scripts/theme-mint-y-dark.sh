cp ~/.config/i3/Mint-Y-Dark-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/.i3status.conf /home/lubomir/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Mint-Y-Dark-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar
#i3-msg restart
#sleep 2s; killall nm-applet && nm-applet &&
#sleep 1s; killall dunst & notify-send "restart dunst"

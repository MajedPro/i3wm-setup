cp ~/.config/i3/Maia-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Maia-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Maia-theme/.i3status.conf /home/lubomir/ &&
cp ~/.config/i3/Maia-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Maia-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Maia-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Maia-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Maia-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

cp ~/.config/i3/Abrus-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Abrus-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Abrus-theme/.i3status.conf /home/lubomir/ &&
cp ~/.config/i3/Abrus-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Abrus-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Abrus-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Abrus-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Abrus-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

cp ~/.config/i3/Canvas-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Canvas-theme/.gtkrc-2.0 /home/lubomir/ &&
cp ~/.config/i3/Canvas-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Canvas-theme/.i3status.conf /home/lubomir/ &&
cp ~/.config/i3/Canvas-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Canvas-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Canvas-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Canvas-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Canvas-theme/zathurarc /home/lubomir/.config/zathura/ &&
cp ~/.config/i3/Canvas-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Canvas-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar &&
killall conky

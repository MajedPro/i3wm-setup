cp ~/.config/i3/Canvas-Polybar-Envypn-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/.gtkrc-2.0 /home/lubomir/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/polybar/config /home/lubomir/.config/polybar &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/zathurarc /home/lubomir/.config/zathura/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar &&
killall conky

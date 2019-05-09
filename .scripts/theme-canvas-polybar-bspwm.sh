cp ~/.config/polybar/bspwm-polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/polybar/bspwm-polybar/launch.sh /home/lubomir/.config/polybar/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Canvas-Polybar-Envypn-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar &&
killall conky

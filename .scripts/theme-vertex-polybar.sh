cp ~/.config/i3/Vertex-Polybar-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Vertex-Polybar-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Vertex-Polybar-theme/polybar/config /home/lubomir/.config/polybar &&
cp ~/.config/i3/Vertex-Polybar-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Vertex-Polybar-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Vertex-Polybar-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Vertex-Polybar-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Vertex-Polybar-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Vertex-Polybar-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

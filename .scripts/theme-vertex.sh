cp ~/.config/i3/Vertex-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Vertex-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Vertex-theme/.i3status.conf /home/lubomir/ &&
cp ~/.config/i3/Vertex-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Vertex-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Vertex-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Vertex-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Vertex-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Vertex-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

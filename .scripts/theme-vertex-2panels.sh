cp ~/.config/i3/Vertex-2panels-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Vertex-2panels-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Vertex-2panels-theme/.i3status.conf /home/lubomir/ &&
cp ~/.config/i3/Vertex-2panels-theme/polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/i3/Vertex-2panels-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Vertex-2panels-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Vertex-2panels-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Vertex-2panels-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Vertex-2panels-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Vertex-2panels-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

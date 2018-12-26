cp ~/.config/i3/Vertex-i3blocks-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/i3blocks.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/.Xresources /home/lubomir/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/compton-i3.conf /home/lubomir/.config/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/conky_green /home/lubomir/.conky/ &&
cp ~/.config/i3/Vertex-i3blocks-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

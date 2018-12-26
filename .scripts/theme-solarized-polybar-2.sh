cp ~/.config/i3/Solarized-Polybar-2-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/polybar/launch.sh ~/.config/polybar/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/polybar/bar* ~/.config/polybar/ &&
#cp ~/.config/i3/Solarized-Polybar-2-theme/polybar/bar2 ~/.config/polybar/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/.Xresources ~/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/ROFI.rasi ~/.config/rofi/themes/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/compton-i3.conf ~/.config/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/dunstrc ~/.config/dunst/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/conky_green ~/.conky/ &&
cp ~/.config/i3/Solarized-Polybar-2-theme/conky1.10_shortcuts_green ~/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar

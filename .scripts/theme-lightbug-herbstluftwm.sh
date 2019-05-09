cp ~/.config/herbstluftwm/LightBug-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/herbstluftwm/LightBug-theme/.gtkrc-2.0 /home/lubomir/ &&
cp ~/.config/herbstluftwm/LightBug-theme/autostart ~/.config/herbstluftwm/ &&
cp ~/.config/herbstluftwm/LightBug-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &&
cp ~/.config/herbstluftwm/LightBug-theme/polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/herbstluftwm/LightBug-theme/.Xresources /home/lubomir/ &&
cp ~/.config/herbstluftwm/LightBug-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/herbstluftwm/LightBug-theme/compton-hw.conf /home/lubomir/.config/ &&
cp ~/.config/herbstluftwm/LightBug-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/herbstluftwm/LightBug-theme/zathurarc /home/lubomir/.config/zathura/ &&
#cp ~/.config/herbstluftwm/LightBug-theme/conky_green /home/lubomir/.conky/ &&
#cp ~/.config/herbstluftwm/LightBug-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar
#killall conky

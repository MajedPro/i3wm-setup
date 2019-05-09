cp ~/.config/herbstluftwm/Stylish-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/herbstluftwm/Stylish-theme/.gtkrc-2.0 /home/lubomir/ &&
cp ~/.config/herbstluftwm/Stylish-theme/autostart ~/.config/herbstluftwm/ &&
cp ~/.config/herbstluftwm/Stylish-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &&
cp ~/.config/herbstluftwm/Stylish-theme/polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/herbstluftwm/Stylish-theme/.Xresources /home/lubomir/ &&
cp ~/.config/herbstluftwm/Stylish-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/herbstluftwm/Stylish-theme/compton-hw.conf /home/lubomir/.config/ &&
cp ~/.config/herbstluftwm/Stylish-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/herbstluftwm/Stylish-theme/zathurarc /home/lubomir/.config/zathura/ &&
#cp ~/.config/herbstluftwm/Stylish-theme/conky_green /home/lubomir/.conky/ &&
#cp ~/.config/herbstluftwm/Stylish-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar
#killall conky

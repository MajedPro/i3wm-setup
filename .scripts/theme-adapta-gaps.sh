cp ~/.config/i3/Adapta-gaps-theme/settings.ini /home/walkerock/.config/gtk-3.0/ &&
cp ~/.config/i3/Adapta-gaps-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Adapta-gaps-theme/.i3status.conf /home/walkerock/ &&
cp ~/.config/i3/Adapta-gaps-theme/.Xresources /home/walkerock/ &&
cp ~/.config/i3/Adapta-gaps-theme/ROFI.rasi /home/walkerock/.config/rofi/themes/ &&
cp ~/.config/i3/Adapta-gaps-theme/dunstrc /home/walkerock/.config/dunst/ &&
cp ~/.config/i3/Adapta-gaps-theme/.conkyrc /home/walkerock/ &&
xrdb ~/.Xresources &&
killall -q polybar

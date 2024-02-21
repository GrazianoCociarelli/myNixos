{
  home.file.".background.png".source = ../asserts/background.png;
  home.file.".xinitrc".text = 
"slstatus &
feh --bg-fill .background.png &
sh ~/.screenlayout/threehead.sh &
picom &
fcitx5 -d -r &
QT_IM_MODULE=fcitx5
exec dwm";
}

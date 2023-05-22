{
  home.file.".background.png".source = ../asserts/background.png;
  home.file.".xinitrc".text = 
"slstatus &
feh --bg-fill .background.png &
sh ~/.screenlayout/threehead.sh &
picom &
fcitx5 -d -r &
exec dwm";
}

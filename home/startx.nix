{
  home.file.".background.png".source = ../asserts/background.png;
  home.file.".xinitrc".text = 
"xrandr --output eDP-1 --mode 1920x1200 --pos 1080x1200 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 0x288 --rotate right --output DP-1 --off --output HDMI-2 --off --output DP-2 --mode 1920x1200 --pos 1080x0 --rotate normal --output HDMI-3 --off --output DP-3 --off --output DP-4 --off &
slstatus &
picom &
feh --bg-fill .background.png &
fcitx5 -d -r &
exec dwm";
}

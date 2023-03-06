{
  home.username = "wangwutang";
  home.file.".xinitrc".text = "
    sh ./scripts/screenlayout.sh
    slstatus &
    exec dwm
    ";

  home.stateVersion = "22.11";
}

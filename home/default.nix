{
  imports = [
    ./startx.nix
    ./alacritty.nix
    ./nvim
    ./ranger
    ./rime
    ./qutebrowser.nix
    ./zathura.nix
    ./mathematica.nix
    ./dropbox.nix
  ];
  services.udiskie.enable = true;
  home.stateVersion = "23.05";
}

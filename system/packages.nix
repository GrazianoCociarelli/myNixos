{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    aspell
    arandr
    bat
    btop
    dmenu
    slstatus
    ranger
    feh
    vim
    fd
    gcc
    glow
    gimp
    iftop
    killall
    neofetch
    pandoc
    pamixer
    tree
    unrar
    unzip
    wget
    zip
    git
    gnumake
  ];
}
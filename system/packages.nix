{ pkgs, ... }: 
let
     oldpkgs = import (builtins.fetchGit {
         # Descriptive name to make the store path easier to identify
         name = "my-old-revision";
         url = "https://github.com/NixOS/nixpkgs/";
         ref = "refs/heads/nixos-23.05";
         rev = "e49c28b3baa3a93bdadb8966dd128f9985ea0a09";
     }) {};

     mathematica1321 = oldpkgs.mathematica;
in
{
  environment.systemPackages = with pkgs; [
    aspell
    arandr
    dmenu
    xclip
    slstatus
    feh
    fd
    gcc
    ghc
    stack
    glow
    gimp
    iftop
    killall
    neofetch
    pandoc
    pamixer
    pavucontrol
    blueberry
    alsa-utils
    input-utils
    xbindkeys
    qbittorrent
    tree
    unrar
    unzip
    wget
    zip
    git
    gnumake
    picom

    vlc
    lutris
    wineWowPackages.stable
    winetricks

    docker

    poppler
    poppler_utils
    djvulibre
    ueberzug
    nvimpager
    ranger

    libreoffice

    glib
    usbutils
    android-file-transfer
    jmtpfs
    go-mtpfs

    anki-bin
    tdesktop
    texmacs
    pdftk
    texlive.combined.scheme-full
    inkscape
    python310
    python310Packages.pygments
    # wolfram-engine
    mathematica1321  # replace init_13.2.1.0.m with an empty one 

    zoom-us
    microsoft-edge

    vimpager
    ## Neovim LSP packages
    texlab
    nil
    python310Packages.python-lsp-server # pylsp
    haskell-language-server
  ];
}

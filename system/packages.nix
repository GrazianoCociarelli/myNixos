{ pkgs, ... }: {
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

    tdesktop
    texmacs
    texlive.combined.scheme-full
    inkscape
    python310
    python310Packages.pygments
    # wolfram-engine
    mathematica  # replace init_13.2.1.0.m with an empty one 

    zoom-us

    vimpager
    ## Neovim LSP packages
    texlab
    nil
    python310Packages.python-lsp-server # pylsp
    haskell-language-server
  ];
}

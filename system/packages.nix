{ pkgs, pkgs-stable, ... }: 
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
    filezilla
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
    xfce.thunar

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
    python311
    python311Packages.tkinter
    tk
    python311Packages.pygments
    # wolfram-engine
    #mathematica  # replace init_13.2.1.0.m with an empty one 

    zoom-us
    microsoft-edge

    vimpager
    ## Neovim LSP packages
    texlab
    nil
    python311Packages.python-lsp-server # pylsp
    haskell-language-server
  ]
  ++[pkgs-stable.mathematica]
  ++[(pkgs.writeShellScriptBin "mma" ''
    QT_XCB_GL_INTEGRATION=none mathematica  
  '')]
  ;
}

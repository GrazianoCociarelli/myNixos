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
    alsa-utils
    xorg.xbacklight
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

    ranger

    tdesktop
    texmacs
    texlive.combined.scheme-full
    python310

    # wolfram-engine
    mathematica  # replace init_13.2.1.0.m with an empty one 

    vimpager
    ## Neovim LSP packages
    texlab
    nil
    python310Packages.python-lsp-server # pylsp
    haskell-language-server
  ];
}

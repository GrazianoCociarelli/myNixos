{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    aspell
    arandr
    btop
    dmenu
    ranger
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
    tree
    unrar
    unzip
    wget
    zip
    git
    gnumake

    tdesktop
    texmacs
    texlive.combined.scheme-full
    python310
    ghc

    vimpager
    # Neovim LSP packages
    texlab
    nil
    python310Packages.python-lsp-server # pylsp
    haskell-language-server
  ];
}

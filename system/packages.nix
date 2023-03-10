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
        
    texmacs
    texlive.combined.scheme-full
    python39

    # Neovim LSP packages
    texlab
    python310Packages.python-lsp-server
    haskell-language-server
  ];
}

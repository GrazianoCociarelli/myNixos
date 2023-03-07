{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-latex-live-preview
      vimtex
      ultisnips
    ];
  };
}

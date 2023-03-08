{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-latex-live-preview
      vimtex
      ultisnips
    ];
  };
}

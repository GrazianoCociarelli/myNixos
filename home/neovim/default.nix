{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-latex-live-preview
      vimtex
      ultisnips

      nvim-base16
    ];
  };
}

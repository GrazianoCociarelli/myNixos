{ pkgs, ... }:

with pkgs;

let myVim = vim_configurable.customize {
  name = "vim";
  vimrcConfig = {
    customRC = ''
      syntax on
      set nu
      set backspace=indent,eol,start
      colorscheme monokai
    '';
    plug.plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-latex-live-preview
      vimtex
      ultisnips
      vim-monokai
    ];
  };
};

  in  {
    environment.systemPackages = with pkgs; [ myVim ];
    environment.variables = { EDITOR = "vim"; };
  }

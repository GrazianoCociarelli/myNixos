{ pkgs, lib, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [

      vim-nix
      {
        plugin = vim-latex-live-preview;
        config = ''
          let g:livepreview_previewer = 'zathura'
          let g:livepreview_engine = 'pdflatex'
          autocmd Filetype tex setl updatetime=1500
        '';
      }
      {
        plugin = vimtex;
        config = ''
          let g:tex_flavor = 'latex'
          let g:vimtex_view_method = 'zathura'
          let g:vomtex_quickfix_mode = 0
          set encoding=utf8
        '';
      }

      nvim-lspconfig

      nvim-cmp
      cmp_luasnip
      cmp-buffer
      cmp-nvim-lsp
      cmp-cmdline
      cmp-path
      luasnip

      nvim-base16
    ];
    
    extraConfig = lib.fileContents ./init.vim;
    extraLuaConfig = lib.fileContents ./init.lua;
  };

  home.file.".config/nvimpager/init.vim".source = ./init.vim;
}

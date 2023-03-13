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
          let g:tex_flavor='latex'
          let g:vimtex_view_method='zathura'
          let g:vomtex_quickfix_mode=0
        '';
      }

      nvim-lspconfig

      nvim-cmp
      cmp-buffer
      cmp-nvim-lsp
      cmp-cmdline
      cmp-path
      cmp_luasnip
      luasnip

      {
        plugin = ultisnips;
        config = ''
          let g:UltiSnipsExpandTrigger="<tab>"
        '';
      }

      nvim-base16
    ];
    
    extraConfig = lib.fileContents ./init.vim;
    extraLuaConfig = lib.fileContents ./init.lua;
  };

  home.file.".config/nvim/UltiSnips" = {
    recursive = true;
    source = ./snippets
    ;
  };
}

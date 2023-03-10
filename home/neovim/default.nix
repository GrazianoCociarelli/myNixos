{ pkgs, ... }:
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
          autocmd Filetype tex setl updatetime=500
        '';
      }

      {
        plugin = vimtex;
        config = ''
          let g:tex_flavor = 'latex'
          let g:vimtex_view_method = 'zathura'
          let g:vomtex_quickfix_mode = 0
          set encoding = utf-8
        '';
      }

      ultisnips

      {
        plugin = nvim-base16;
        config = ''
          colorscheme base16-tomorrow-night
        '';
      }

    ];
  };
}

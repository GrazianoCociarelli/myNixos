{ 
  programs.qutebrowser = {
    enable = true;

    settings = {

      colors = with {
        black   = "#1d1f21";
        red     = "#cc6666";
        green   = "#b5bd68";
        yellow  = "#f0c674";
        blue    = "#81a2be";
        magenta = "#b294bb";
        cyan    = "#8abeb7";
        white   = "#c5c8c6";
      };

      {
          completion = {
            category = {
              border = {
                bottom = black;
                top = black;
              };
              bg = black;
              fg = white;
            };

            even.bg = black;
            odd.bg  = black;
            fg = [ white white white ];

            item.selected = {
              bg = yellow;
              fg = black;
              border.bottom = yellow;
              border.top = yellow;
            };
          }; 

          hints = {
            bg = yellow;
            fg = black;
            match.fg = red;
          };

          tabs = {
            selected.even.bg = black;
            selected.odd.bg  = black;
            selected.even.fg = white;
            selected.odd.fg  = white;
          };

          statusbar.normal.bg = black;
          statusbar.normal.fg = white;
          statusbar.command.bg = black;
          statusbar.command.fg = white;

          download = {
            bar.bg = black;
          };
      };
    };

    # TODO
  };
}

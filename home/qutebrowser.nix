{ programs.qutebrowser = {
    enable = true;

    settings = {

      let
        black   = "#1d1f21";
        red     = "#cc6666";
        green   = "#b5bd68";
        yellow  = "#f0c674";
        blue    = "#81a2be";
        magenta = "#b294bb";
        cyan    = "#8abeb7";
        white   = "#c5c8c6";
      in
      colors = {

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
        };
    };


    # TODO
  };
}

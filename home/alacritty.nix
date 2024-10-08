{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
          family = "monospace";
          style = "Regular";
        };
        size = 9;
      };
      colors = {    
          primary = {
            background = "#1d1f21";
            foreground = "#c5c8c6";
          };        
          cursor = {
            text = "#1d1f21";
            cursor = "#ffffff";
          };
          normal = {
            black   = "#1d1f21";
            red     = "#cc6666";
            green   = "#b5bd68";
            yellow  = "#e6c547";
            blue    = "#81a2be";
            magenta = "#b294bb";
            cyan    = "#70c0ba";
            white   = "#373b41"; 
          };
          bright = {
            black   = "#666666";
            red     = "#ff3334";
            green   = "#9ec400";
            yellow  = "#f0c674";
            blue    = "#81a2be";
            magenta = "#b77ee0";
            cyan    = "#54ced6";
            white   = "#282a2e";
          };
      };
      env.WINIT_X11_SCALE_FACTOR = "1.5";
    };
  };
}

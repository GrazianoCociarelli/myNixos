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
      env.WINIT_X11_SCALE_FACTOR = "1.5";
    };
  };
}

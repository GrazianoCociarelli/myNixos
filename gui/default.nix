{
  services.xserver = {
    enable = true;
    autorun = false;
    
    windowManager.dwm.enable = true;
    displayManager.startx.enable = true;
    
    videoDrivers = [ "modesetting" ];
  };

  nixpkgs.overlays = [
    (self: super: {
      dwm = super.dwm.overrideAttrs (oldAttrs: rec {
        patches =  [
          ./mydwm.patch
        ];
      });
    })

     (self: super: {
      slstatus = super.slstatus.overrideAttrs (oldAttrs: rec {
        patches =  [
          ./mystatus.patch
        ];
      });
    })
  ];
  
  programs.slock.enable = true;

}

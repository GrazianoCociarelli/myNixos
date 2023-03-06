{
  nixpkgs.overlays = [
    (final: prev: {
      dwm = prev.dwm.overrideAttrs (old: { src = ./mydwm ;});
      slstatus = prev.dwm.overrideAttrs (old: { src = ./mystatus ;});
    })
  ];  
 }

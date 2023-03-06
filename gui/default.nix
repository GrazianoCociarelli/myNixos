{
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

}

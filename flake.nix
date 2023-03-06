{
  description = "Nixos desktop configuration";

  # the source of packages 
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.follows = "nixpkgs";

    nixos-cn.url = "github:nixos-cn/flakes";
    nixos-cn.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ... } @ inputs:
    let system = "x86_64-linux";
    in {
      nixosConfigurations."kvm" = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./system/configuration.nix
        
          inputs.home-manager.nixosModules.home-manager {
            nixpkgs.config.allowUnfree = true;
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
          }
        ];
      };
    };
}

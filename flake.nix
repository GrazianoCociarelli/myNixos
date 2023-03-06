{
  description = "Nixos desktop configuration";

  # the source of packages 
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

   #home-manager.url = "github:nix-community/home-manager";
   #home-manager.follows = "nixpkgs";

    nixos-cn.url = "github:nixos-cn/flakes";
    nixos-cn.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let system = "x86_64-linux";
    in {
      nixosConfiguration."ThinkP" = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./system/configuration.nix
        ];
      };
    };
}

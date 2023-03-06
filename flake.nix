{
  description = "Nixos desktop configuration";

  # the source of packages 
  input = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstalbe";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.follows = "nixpkgs";

    nixos-cn.url = "github:nixos-cn/flakes";
    nixos-follows = "nixpkgs";

    nur.url = "github:nix-community/NUR";
    nur.inputs.nixpkgs.follows = "nixpkgs";
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

{
  description = "nixos installer image with the latest kernel";

  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs =
    { nixpkgs, ... }@inputs:
    {
      nixosConfigurations.image = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ ./image.nix ];
      };
    };
}

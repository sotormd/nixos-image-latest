{
  description = "nixos installer image with the latest kernel";

  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs =
    { nixpkgs, ... }@inputs:
    {
      image = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ ./image.nix ];
      };
    };
}

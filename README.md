# nixos-image-latest

NixOS installer image with the latest kernel `pkgs.linuxPackages_latest`)

# Usage

```bash
nix run nixpkgs#nixos-generators -- \
--format iso \
--flake github:sotormd/nixos-image-latest#image \
-o /tmp/nixos-image-latest
```

The image will be available under `/tmp/nixos-image-latest/iso/`

# nixos-image-latest

[![Build ISO](https://github.com/sotormd/nixos-image-latest/actions/workflows/build-iso.yml/badge.svg)](https://github.com/sotormd/nixos-image-latest/actions/workflows/build-iso.yml)

NixOS installer image with the latest kernel `pkgs.linuxPackages_latest`)

# Usage

To build yourself:

```bash
nix run nixpkgs#nixos-generators -- \
--format iso \
--flake github:sotormd/nixos-image-latest#image \
-o /tmp/nixos-image-latest
```

The image will be available under `/tmp/nixos-image-latest/iso/`

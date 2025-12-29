{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # some zfs packages are broken
  nixpkgs.config.allowBroken = true;
}

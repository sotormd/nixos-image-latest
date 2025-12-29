{ lib, pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # some zfs packages are broken
  nixpkgs.config.allowBroken = true;
  boot.supportedFilesystems = lib.mkForce [
    "ext4"
    "vfat"
    "ntfs"
    "xfs"
    "btrfs"
  ];
}

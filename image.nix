{ pkgs, modulesPath, ... }:

{
  imports = [
    "${modulesPath}/installer/cd-dvd/installation-cd-graphical-calamares-gnome.nix"
    ./latest-kernel.nix
  ];

  time.timeZone = "UTC";
  nixpkgs.hostPlatform.system = "x86_64-linux";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = with pkgs; [ nerd-fonts.fira-code ];
  services.desktopManager.gnome.extraGSettingsOverrides = ''
    [org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles/:aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/]
    use-system-font=false
    font='FiraCode Nerd Font Mono 11'
  '';
}

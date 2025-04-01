{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    hyprlock # lock screen
    hypridle # idle locking
    dunst # notification daemon
    eww # widgets
    wofi # app launcher
  ];
  programs.hyprland = {
    enable = true;
  };
  services.displayManager.sddm = {
    wayland.enable = true;
    enable = true;
  };
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}

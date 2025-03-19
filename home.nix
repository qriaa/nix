{ config, pkgs, ... }:
{
  home = {
    username = "qriaa";
    homeDirectory = "/home/qriaa";
    stateVersion = "24.11";
    packages = [
      pkgs.htop
      pkgs.lsd
      pkgs.ripgrep
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
    file = {
      ".config/nvim".source = ./dotfiles/nvim;
    };
  };

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
}

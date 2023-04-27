# https://nix-community.github.io/home-manager/index.html#sec-install-standalone

{ config, pkgs, ... }: 

let
    upkgs = import <nixpkgs-unstable> {};
in

{

    home.username = "jblawatt";
    home.homeDirectory = "/Users/jblawatt";

    home.stateVersion = "22.11";

    home.packages = [
        pkgs.htop
        pkgs.ranger
        pkgs.ripgrep
        pkgs.exa
        pkgs.httpie
        pkgs.terraform
        upkgs.ruff
        upkgs.zoxide
        upkgs.powershell
        upkgs.plantuml
        upkgs.hugo
        upkgs.gitlab-runner
        upkgs.k9s
        upkgs.kyverno
        upkgs.kubecolor

        upkgs.neovide
#         upkgs.kitty
    ];    

#     home.shellAliases = {
#         "z" = "zoxide";
#         "tf" = "terraform";
#     };

    # programs.home-manager.enable = true;

    programs = {
      home-manager.enable = true;
      zsh = {
        enable = false;
        shellAliases = {
          "z" = "zoxide";
          "tf" = "terraform";
        };
      };
    };

}

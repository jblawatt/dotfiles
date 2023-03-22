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
    ];    

    home.shellAliases = {
        "z" = "zoxide";
    };

    programs.home-manager.enable = true;

}

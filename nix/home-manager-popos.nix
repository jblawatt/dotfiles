{ config, pkgs, ... }:

let
	npkgs = import <unstable> {};
in

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "j3nko";
  home.homeDirectory = "/home/j3nko";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "22.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [

    pkgs.nerdfonts
    pkgs.jq
    pkgs.fzf
    pkgs.ripgrep
    pkgs.tree
    pkgs.fossil
    pkgs.bat
    pkgs.ranger
    pkgs.k9s
    npkgs.ruff
    pkgs.elixir
    npkgs.joplin
    npkgs.joplin-desktop
    npkgs.pipx
    npkgs.vifm
    npkgs.tldr
    npkgs.duf
    npkgs.entr
    npkgs.just
    npkgs.most
    npkgs.procs
    npkgs.gping
    npkgs.ctop
    npkgs.exa
    npkgs.httpie
    # npkgs.dua-cli
    npkgs.ddgr
    npkgs.tuir
    npkgs.lazydocker
    npkgs.lazygit
    npkgs.kdash
    npkgs.platformio
    # npkgs.syncthing
    npkgs.helix
    npkgs.qutebrowser
    npkgs.picocom
    npkgs.mqttui
    npkgs.terraform
    npkgs.kicad
    # npkgs.neovim
    npkgs.tmux
    # npkgs.zsh
    npkgs.direnv
    npkgs.zoxide
    # npkgs.nodejs
    # npkgs.yarn

    npkgs.kubectl
    npkgs.kubectx
    npkgs.kubecolor
    npkgs.kubernetes-helm
    npkgs.kustomize
    npkgs.kind
    npkgs.faas-cli

    npkgs.go
    npkgs.gopls
    npkgs.hugo
    
    npkgs.htop
    npkgs.drone-cli
    npkgs.starship
    
    # npkgs.direnv

    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  fonts.fontconfig.enable = true;

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/j3nko/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.shellAliases = {
    listitems = "exa";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  # programs.docker.enable = true;


  programs.git = {
    enable = true;
    userName = "jblawatt";
    userEmail = "jblawatt@googlemail.com";
    aliases = {
      st = "status";
      ci = "commit";
      co = "checkout";
    };
  };

}

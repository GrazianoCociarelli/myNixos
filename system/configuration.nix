# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./packages.nix
      ../gui
      #...
    ];

  nix.settings.substituters = [
    "https://mirrors.ustc.edu.cn/nix-channels/store"
    "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    "https://mirror.sjtu.edu.cn/nix-channels/store"
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "whwuth-X1Carbon-NixOS"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  sound.enable = true;
  hardware.pulseaudio.enable = true;  
  
  hardware.acpilight.enable = true;



  environment.variables = {
    EDITOR = "nvim"; 
    VISUAL = "nvim";
  };

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.inputMethod.enabled = "fcitx5";
  i18n.inputMethod.fcitx5.addons = with pkgs; [ fcitx5-rime fcitx5-configtool ]; 
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "zh_CN.UTF-8";
  };

  virtualisation.docker.enable = true;

  users.users.whwuth = {
    isNormalUser = true;
    description = "whwuth";
    extraGroups = [ "networkmanager" "docker" "wheel" "audio" "sound" "video" "input" ];
  };

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  
  nixpkgs.config.allowUnfree = true;  

 fonts = {
    enableDefaultFonts = true;
    fontconfig.enable = true;
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      wqy_microhei
      wqy_zenhei
    ];
  };

  services.udisks2.enable = true;
  services.udisks2.mountOnMedia = true;
  services.gvfs.enable = true;
  services.v2raya.enable = true;
  services.unclutter.enable = true;
  
  qt.enable = true;
  qt.platformTheme = "gtk2";
  qt.style = "gtk2";
 
  system.stateVersion = "23.05"; # Did you read the comment?
}


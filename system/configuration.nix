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
    "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    "https://mirror.sjtu.edu.cn/nix-channels/store"
  ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # Enable networking
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  sound.enable = true;
  hardware.pulseaudio.enable = true;  

 
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

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.wangwutang = {
    isNormalUser = true;
    description = "wangwutang";
    extraGroups = [ "networkmanager" "wheel" ];
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
  
  services.v2raya.enable = true;
  services.unclutter.enable = true;
  
  qt.enable = true;
  qt.platformTheme = "gtk2";
  qt.style = "gtk2";
 
  system.stateVersion = "22.11"; # Did you read the comment?
}


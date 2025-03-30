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

  hardware.bluetooth.enable = true;
  hardware.acpilight.enable = true;

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  environment.variables = {
    EDITOR = "nvim"; 
    VISUAL = "nvim";
  };

  # environment.sessionVariables.QT_XCB_GL_INTEGRATION = "none";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.inputMethod.enable = true;
  i18n.inputMethod.type = "fcitx5";
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
  programs.appimage.enable = true;
  users.defaultUserShell = pkgs.fish;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  
  nixpkgs.config.allowUnfree = true;  

 fonts = {
    enableDefaultPackages = true;
    fontconfig.enable = true;
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      wqy_microhei
      wqy_zenhei
      newcomputermodern
    ];
  };

  services.udisks2.enable = true;
  services.udisks2.mountOnMedia = true;
  services.gvfs.enable = true;
  services.v2raya.enable = true;
  services.unclutter.enable = true;
  services.picom.enable=true;
  services.picom.backend="glx";
  

  qt.enable = true;
  qt.platformTheme = "gtk2";
  qt.style = "gtk2";

  
 
  system.stateVersion = "23.05"; # Did you read the comment?
}


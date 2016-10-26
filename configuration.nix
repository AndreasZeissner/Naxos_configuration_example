{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./programms/vim/default.nix
      ./programms/default.nix
      ./policystuff/default.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda";

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "15.09";
}

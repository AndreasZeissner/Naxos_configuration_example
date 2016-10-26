{ config, lib, pkgs, ... }:

{
  imports = [ ];

  boot.initrd.availableKernelModules = [ "ata_piix" "sd_mod" ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/a6b78754-318b-4562-9f1d-cb08e602a15c";
      fsType = "ext4";
    };

  fileSystems."/vagrant" =
    { device = "none";
      fsType = "vboxsf";
    };

  swapDevices = [ ];

  nix.maxJobs = 1;
  virtualisation.virtualbox.guest.enable = true;
}

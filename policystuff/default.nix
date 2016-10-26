{ config, lib, pkgs, ... }:
with lib;
{
  users = let
    userDefaultSettings =
    {
      isNormalUser = true;
      extraGroups  = [ "wheel" ];
    };
    in
    {
      mutableUsers = true;
      extraUsers   = mapAttrs (userName: userSettings: userDefaultSettings // userSettings) rec {
        wangoe = {
          home = "/home/wangoe";
          description = "WangoeWoe Account";
        };
        root = {
            isNormalUser = false;
            isSystemUser = true;
            hashedPassword = "f93fc10472a31bb3061aa0b45e228c5a";
        };
      };
   };
}

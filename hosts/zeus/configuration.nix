{ 
    config,
    pkgs,
    inputs,
    ...
}:

{
  imports =
    [
      ./hardware.nix
      ./boot.nix
      ./display.nix
      ./network.nix
      ./packages.nix
      ./sound.nix
      ./user.nix
      # inputs.home-manager.nixosModules.home-manager
    ];

  # enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # enable home manager
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "daksh" = import ../../home/daksh/home.nix;
    };
  };

  system.stateVersion = "25.05"; # Did you read the comment?
}

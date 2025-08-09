{ config, pkgs, ... }:

let
  # Override PrismLauncher
  prismLauncher = pkgs.prismlauncher.override {
    prismlauncher-unwrapped = pkgs.prismlauncher-unwrapped.overrideAttrs (oa: {
      src = pkgs.fetchFromGitHub {
        owner = "Diegiwg";
        repo = "PrismLauncher-Cracked";
        rev = "9.4";
        sha256 = "sha256-Ld6t+zKGfDcXjfELdbcBAh9RQlAp7LIumUjQ2s7fjKg=";
      };
    });
  };
in

{
  # Home Manager options
  home.packages = [ prismLauncher ];

  # Optionally, if you want to make it available globally (e.g., for all users)
  # environment.systemPackages = [ prismLauncher ];

  # Additional configuration can be added here
}

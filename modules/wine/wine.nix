{ pkgs, ... }:

{
  programs.wine = {
    enable = true;
    package = pkgs.winePackages.stable;  # or `winePackages.devel`
  };

  home.packages = with pkgs; [
    vkd3d  # For Vulkan support with Wine on Wayland
  ];
}

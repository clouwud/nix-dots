{
  colorScheme,
  pkgs,
  ...
}:
let
  hyprland = wayland.windowManager.hyprland;
in
{
  hyprland.enable = true;
  hyprland.systemd.enable = false; # only required if uwsm is used.
  hyprland.settings = {
    imports = [

    ];
    monitor = ",preferred,auto,1";
  };
}

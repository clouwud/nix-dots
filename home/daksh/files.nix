{ ... }:
{

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    ".config/uwsm/env".text = ''
      export QT_AUTO_SCREEN_SCALE_FACTOR=1
      export QT_QPA_PLATFORM=wayland;xcb
      export QT_QPA_PLATFORMTHEME=qt5ct
      export XDG_SESSION_TYPE=wayland
      export XDG_CURRENT_DESKTOP=Hyprland
      export XDG_SESSION_DESKTOP=Hyprland
      export XCURSOR_THEME=Bibata-Modern-Classic
      export XCURSOR_SIZE=20
      export LIBVA_DRIVER_NAME=nvidia
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export HYPRSHOT_DIR=/home/daksh/Pictures/screenshots
    '';

    ".config/uwsm/env-hyprland".text = ''
      export HYPRCURSOR_THEME=Bibata-Modern-Classic
      export HYPRCURSOR_SIZE=20
      export AQ_DRM_DEVICES="/dev/dri/card1:/dev/dri/card0"
    '';
  };
}

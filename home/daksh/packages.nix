{
  pkgs,
  ...
}:
{
  fonts.fontconfig.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    firefox
    brave
    yazi
    nix-search-cli
    direnv
    spotify
    equibop
    qbittorrent
    stremio

    gcc

    # gaming
    wineWowPackages.waylandFull
    winetricks

    # fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome
    nerd-fonts.iosevka
  ];
}

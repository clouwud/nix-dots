{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    steam-run
    cyme
  ];
}

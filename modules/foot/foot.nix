{ conf, ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Iosevka Nerd Font:style=Regular:pixelsize=22";
        font-bold = "Iosevka Nerd Font:style=Bold:pixelsize=22";
      };
      scrollback.lines = 10000;
      colors = with conf.colors.default; {
        inherit foreground background;
        regular0 = surface1;
        regular1 = red;
        regular2 = green;
        regular3 = yellow;
        regular4 = blue;
        regular5 = pink;
        regular6 = teal;
        regular7 = subtext1;
        bright0 = surface2;
        bright1 = red;
        bright2 = green;
        bright3 = yellow;
        bright4 = blue;
        bright5 = pink;
        bright6 = teal;
        bright7 = subtext0;
      };
    };
  };
}

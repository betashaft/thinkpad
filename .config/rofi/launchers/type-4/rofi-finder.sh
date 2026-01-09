dir="$HOME/.config/rofi/launchers/type-4"
theme='style-9-wide'

selection=$(fd . $HOME --hidden --type file 2>/dev/null |
  sed "s;$HOME;~;" |
  rofi -sort -sorting-method fzf -disable-history -dmenu -theme ${dir}/${theme}.rasi -no-custom -p "" |
  sed "s;\~;$HOME;")

xdg-open "$selection"

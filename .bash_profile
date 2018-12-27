export PATH="$PATH:$HOME/.local/bin"
export QT_QPA_PLATFORMTHEME="qt5ct"

# Auto start i3 after login on first two VTs
[[ $XDG_VTNR -le 2 ]] && startx /usr/bin/i3; exit

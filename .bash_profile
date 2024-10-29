# Detect session type local
case $(tty) in
    /dev/tty[0-2]*)
    SESSION_TYPE=local/regular ;;
    /dev/tty[3-9]*)
    SESSION_TYPE=local/emerg ;;
    *)
    SESSION_TYPE=unknown ;;
esac

# Detect session type remote
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TYPE=remote/ssh
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) SESSION_TYPE=remote/ssh;;
  esac
fi


# Common session settings
export PATH="$PATH:$HOME/.local/bin"
export SANE_DEFAULT_DEVICE="escl:http://192.168.42.216:443"
export XDG_CURRENT_DESKTOP=sway


# local* session settings
if [[ "$SESSION_TYPE" = "local"* ]]; then
    export QT_QPA_PLATFORMTHEME="qt5ct"
fi


# local/regular session settings
if [[ "$SESSION_TYPE" = "local/regular" ]]; then
    # Auto start sway after login
    sway; exit
fi

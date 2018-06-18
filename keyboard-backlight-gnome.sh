xset led 3;
dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |
  while read x; do
    case "$x" in
      *"boolean true"*) xset -led 3;;
      *"boolean false"*) xset led 3;;
    esac
  done
xset led 3;
dbus-monitor --session "type='signal',interface='com.ubuntu.Upstart0_6'" | \
(
  while true; do
    read X
    if echo $X | grep "desktop-lock" &> /dev/null; then
      xset -led 3;
    elif echo $X | grep "desktop-unlock" &> /dev/null; then
      xset led 3;
    fi
  done
);

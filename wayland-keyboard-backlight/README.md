# Keyboard Backlight on Wayland

Keyboard backlight can turned on and off by writing to to `/sys/class/leds/input3::scrolllock/brightness`. This requires `sudo`.

GNOME startup scripts run as the current user. To make keyboard backlight work on login / lockscreen the current user needs permission to write to the brightness file.

## How to

 - move `led-permissions.service` to `/etc/systemd/system/led-permissions.service`

 - `sudo chmod 664 /etc/systemd/led-permissions.service`

 - move `led-permissions.sh` to `/usr/local/bin/led-permissions.sh`

 - `sudo chmod 744 /urs/local/bin/led-permissions.sh`

 - move `keyboard-backlight.sh` to `~/keyboard-backlight.sh`

 - `chmod +x keyboard-backlight.sh`

 - Add `keyboard-backlight.sh` to startup scripts with `gnome-session-properties`
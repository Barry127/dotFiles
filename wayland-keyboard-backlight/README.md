# Keyboard Backlight on Wayland

Keyboard backlight can turned on and off by writing to to `/sys/class/leds/input3::scrolllock/brightness`. This requires `sudo`.

GNOME startup scripts run as the current user. To make keyboard backlight work on login / lockscreen the current user needs permission to write to the brightness file.

## How to

 - move `led-permission.service` to `/etc/systemd/system/led-permission.service`

 - `sudo chmod 664 /etc/systemd/system/led-permission.service`

 - move `led-permission.sh` to `/usr/local/bin/led-permission.sh`

 - `sudo chmod 744 /urs/local/bin/led-permission.sh`

 - `sudo systemctl daemon-reload`

 - `sudo systemctl enable led-permission.service`

 - move `keyboard-backlight.sh` to `~/keyboard-backlight.sh`

 - `chmod +x keyboard-backlight.sh`

 - Add `keyboard-backlight.sh` to startup scripts with `gnome-session-properties`
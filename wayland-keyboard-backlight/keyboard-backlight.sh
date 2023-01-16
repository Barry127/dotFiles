#!/bin/bash

function led_on () {
  echo 1 > /sys/class/leds/input3::scrolllock/brightness;
}

function led_off () {
  echo 0 > /sys/class/leds/input3::scrolllock/brightness;
}

led_on;

dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |
  while read x; do
    case "$x" in
      *"boolean true"*) led_off;;
      *"boolean false"*) led_on;;
    esac
  done

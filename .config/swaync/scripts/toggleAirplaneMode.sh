#!/bin/bash

WIFI_STATE=$(nmcli radio wifi)

if [[ "$WIFI_STATE" == "enabled" ]]; then
  nmcli radio wifi off
  bluetoothctl power off
  pkill electron-mail &
  pkill vesktop &
  pkill AndroidMessages &
  pkill dropbox
  notify-send "✈ Airplane Mode" "Wi-Fi & Bluetooth turned OFF" --icon=airplane-mode-symbolic
else
  nmcli radio wifi on
  bluetoothctl power on
  notify-send "🌐 Airplane Mode" "Wi-Fi & Bluetooth turned ON" --icon=network-wireless-symbolic
fi

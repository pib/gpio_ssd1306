#!/bin/sh

source lib.sh
source text.sh

init_display

ip=`ifconfig wlan0 | grep -oE "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b" | head -n1`
write_text "IP:   $ip"
ssid=`iwgetid -r`
write_text "SSID: $ssid"

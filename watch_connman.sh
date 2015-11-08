#!/bin/sh

dbus-monitor --system path=/net/connman/technology/wifi | while read line ; do ./ip.sh ; done

#!/bin/sh

source ./lib.sh

enable_pins
init_display

while true; do
  write_data 1 0 1 0 1 0 1 0
done

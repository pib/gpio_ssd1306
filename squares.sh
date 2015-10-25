#!/bin/sh

source lib.sh

init_display

#write_command 1 0 1 0 0 0 0 0 # 0xA0 set segment re-map
write_command 1 1 0 1 1 0 1 0 # 0xDA set COM pins config
write_command 0 0 0 1 0 0 1 0 # 0x12 sequential, left/right remap

while true; do
  for i in `seq 1 4`; do write_data 1 1 1 1 0 0 1 1; done
  for i in `seq 1 3`; do write_data 0 0 0 0 0 0 0 0; done
done

#!/bin/sh

source lib.sh

# Scrolls the screen horizontally.
# Note that you can't draw to the screen while scrolling is going on.

write_command 0 0 1 0 0 1 1 1 # 0x27 left horizontal scroll (change last bit for right scroll)
write_command 0 0 0 0 0 0 0 0 # 0x00 this byte left intentionally blank
write_command 0 0 0 0 0 0 0 0 # 0x00 start page address (last 3 bits)
write_command 0 0 0 0 0 0 0 0 # 0x00 interval between steps, 5 frames (see datasheet for values)
write_command 0 0 0 0 0 1 1 1 # 0x07 end page address (last 3 bits)
write_command 0 0 0 0 0 0 0 0 # 0x00 another dummy byte
write_command 1 1 1 1 1 1 1 1 # 0xFF another dummy byte
write_command 0 0 1 0 1 1 1 1 # 0x2F start scroll

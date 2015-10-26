#!/bin/sh

source lib.sh

# Scrolls the screen diagonally.
# Note that you can't draw to the screen while scrolling is going on.

write_command 0 0 1 0 1 0 1 0 # 0x27 left and vertical scroll
write_command 0 0 0 0 0 0 0 0 # 0x00 this byte left intentionally blank
write_command 0 0 0 0 0 0 0 0 # 0x00 start page address (last 3 bits)
write_command 0 0 0 0 0 1 1 1 # 0x07 interval between steps, 2 frames (see datasheet for values)
write_command 0 0 0 0 0 1 1 1 # 0x07 end page address (last 3 bits)
write_command 0 0 0 0 0 0 1 0 # 0x02 vertical offset 2
write_command 0 0 1 0 1 1 1 1 # 0x2F start scroll

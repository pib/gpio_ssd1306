#!/bin/sh

# VCC (3.3V):   VCC
# GND:          GND
# XIO-P0 (408): D0
# XIO-P1 (409): D1
# XIO-P3 (410): RES
# XIO-P4 (411): DC
# XIO-P5 (412): CS
gpio=/sys/class/gpio
exp=${gpio}/export
d0=408
d1=409
res=410
dc=411
cs=412

enable_p () {
  echo ${1} > ${gpio}/export
  echo ${2} > ${gpio}/gpio${1}/direction
}

disable_p () {
  echo in > ${gpio}/gpio${1}/direction
  echo ${1} > ${gpio}/unexport
}

set_p () {
  echo ${2} > ${gpio}/gpio${1}/value
}

set_cs () {
  echo ${1} >&3
}

set_dc () {
  echo ${1} >&4
}

set_d0 () {
  echo ${1} >&5
}

set_d1 () {
  echo ${1} >&6
}

write_command () {
  set_cs 1 # CS off
  set_dc 0 # DC low, command mode
  set_cs 0 # CS on
  set_d0 0 # Clock low

  # send bits
  for b in $1 $2 $3 $4 $5 $6 $7 $8; do
    set_d1 $b
    set_d0 1 # Up
    set_d0 0 # Down
  done
}

enable_pins () {
  # Enable and set RES, CS, DC, D0, D1 as output
  enable_p $res high
  enable_p $cs high
  enable_p $dc high
  enable_p $d0 low
  enable_p $d1 low
  use_display
}

disable_pins () {
  exec 3>&-
  exec 4>&-
  exec 5>&-
  exec 6>&-

  # Set as input and disable RES, CS, DC, D0, D1 as output
  disable_p $res
  disable_p $cs
  disable_p $dc
  disable_p $d0
  disable_p $d1

}

do_reset () {
  set_p $res 1
  usleep 1000
  set_p $res 0
  usleep 10000
  set_p $res 1
  set_d0 0
}

use_display () {
  exec 3<>${gpio}/gpio${cs}/value
  exec 4<>${gpio}/gpio${dc}/value
  exec 5<>${gpio}/gpio${d0}/value
  exec 6<>${gpio}/gpio${d1}/value
}

init_display () {
  enable_pins
  do_reset
  write_command 1 0 1 0 1 1 1 0 # 0xAE display OFF
  write_command 1 1 0 1 0 1 0 1 # 0xD5 set clock div
  write_command 1 0 0 0 0 0 0 0 # 0x80
  write_command 1 0 1 0 1 0 0 0 # 0xA8 set multiplex ratio
  write_command 0 0 1 1 1 1 1 1 # 0x3F
  write_command 1 1 0 1 0 0 1 1 # 0xD3 set display offset
  write_command 0 0 0 0 0 0 0 0 # 0x00 no offset
  write_command 0 1 0 0 0 0 0 0 # 0x40 set display start line to 0
  write_command 1 0 0 0 1 1 0 1 # 0x8D charge pump command
  write_command 0 0 0 1 0 1 0 0 # 0x14 enable charge pump
  write_command 0 0 1 0 0 0 0 0 # 0x20 set memory addressing mode
  write_command 0 0 0 0 0 0 0 0 # 0x00 horizontal addressing mode
  write_command 1 0 1 0 0 0 0 1 # 0xA1 set segment re-map
  write_command 1 1 0 0 1 0 0 0 # 0xC8 set COM scan decrementing
  write_command 1 1 0 1 1 0 1 0 # 0xDA set COM pins config
  write_command 0 0 0 1 0 0 1 0 # 0x12 sequential, left/right remap
  write_command 1 0 0 0 0 0 0 1 # 0x81 set contrast
  write_command 1 1 0 0 1 1 1 1 # 0xCF somewhat higher
  write_command 1 1 0 1 1 0 0 1 # 0xD9 set pre-charge period
  write_command 1 1 1 1 0 0 0 1 # 0xF1 phase 1: 15, phase 2: 1
  write_command 1 1 0 1 1 0 1 1 # 0xDB set Vcomh deselect level
  write_command 0 1 0 0 0 0 0 0 # 0x40 from adafruit code, not listed in datasheet
  write_command 1 0 1 0 0 1 0 0 # 0xA4 display all on, resume
  write_command 1 0 1 0 0 1 1 0 # 0xA6 display not inverted

  write_command 1 0 1 0 1 1 1 1 # 0xAF display on
}

clear_display () {
  for c in `seq 1 128`; do
    for r in `seq 1 8`; do
      write_data 0 0 0 0 0 0 0 0
    done
  done
}

write_data () {
  set_cs 1 # CS off
  set_dc 1 # DC high, data mode
  set_cs 0 # CS on
  set_d0 0 # Clock low

  # send bits
  for b in $1 $2 $3 $4 $5 $6 $7 $8; do
    set_d1 $b
    set_d0 1 # Up
    set_d0 0 # Down
  done
}

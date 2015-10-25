#!/bin/sh

source lib.sh

init_display

for r in `seq 1 4`; do
  for s in `seq 1 8`; do
    for i in `seq 1 8`; do write_data 1 1 1 1 1 1 1 1; done
    for i in `seq 1 8`; do write_data 0 0 0 0 0 0 0 0; done
  done
  for s in `seq 1 8`; do
    for i in `seq 1 8`; do write_data 0 0 0 0 0 0 0 0; done
    for i in `seq 1 8`; do write_data 1 1 1 1 1 1 1 1; done
  done
done

#!/bin/sh

echo in > /sys/class/gpio/gpio408/direction
echo in > /sys/class/gpio/gpio409/direction
echo in > /sys/class/gpio/gpio410/direction
echo in > /sys/class/gpio/gpio411/direction
echo in > /sys/class/gpio/gpio412/direction

echo 408 > /sys/class/gpio/unexport
echo 409 > /sys/class/gpio/unexport
echo 410 > /sys/class/gpio/unexport
echo 411 > /sys/class/gpio/unexport
echo 412 > /sys/class/gpio/unexport

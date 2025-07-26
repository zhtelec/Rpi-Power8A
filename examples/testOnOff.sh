#!/bin/sh

while true
do
    echo 'dev0 (gpio24) on'
    gpioset gpiochip4 24=1
    sleep 60
    gpioset gpiochip4 24=0
    echo 'dev1 (gpio25) on'
    gpioset gpiochip4 25=1
    sleep 60
    gpioset gpiochip4 25=0
    echo 'dev2 (gpio26) on'
    gpioset gpiochip4 26=1
    sleep 60
    gpioset gpiochip4 26=0
    echo 'dev3 (gpio27) on'
    gpioset gpiochip4 27=1
    sleep 60
    gpioset gpiochip4 27=0
done

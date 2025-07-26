#!/bin/sh

allOff() {
    gpioset gpiochip4 24=0
    gpioset gpiochip4 25=0
    gpioset gpiochip4 26=0
    gpioset gpiochip4 27=0
}

trapExec() {
    allOff

    exec 0
}


trap trapExec 1 2 3 15

allOff

while true
do
    echo 'dev0 (gpio24) on'
    gpioset gpiochip4 24=1
    sleep 60
    gpioset gpiochip4 24=0
    echo 'dev1 (gpio25) on'
    echo 'dev2 (gpio26) on'
    gpioset gpiochip4 25=1
    gpioset gpiochip4 26=1
    sleep 60
    echo 'dev2 (gpio27) on'
    gpioset gpiochip4 25=0
    gpioset gpiochip4 27=1
    sleep 60
    gpioset gpiochip4 26=0
    gpioset gpiochip4 27=0
done

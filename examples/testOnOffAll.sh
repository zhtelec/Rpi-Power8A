#!/bin/sh

trapExec() {
    allOff

    exec 0
}

allOff() {
    gpioset gpiochip4 24=0
    gpioset gpiochip4 25=0
    gpioset gpiochip4 26=0
    gpioset gpiochip4 27=0
}

allOn() {
    gpioset gpiochip4 24=1
    sleep 0.05
    gpioset gpiochip4 25=1
    sleep 0.05
    gpioset gpiochip4 26=1
    sleep 0.05
    gpioset gpiochip4 27=1
}

trap trapExec 1 2 3 15

if [ x$1 = x"on" ]; then
    allOn
elif [ x$1 = x"off" ]; then
    allOff
else
    echo 'testAllOnOff.sh [on|off]'
fi

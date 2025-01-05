#!/bin/bash

display() {

    power=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | grep -o "[0-9]*")
    charging=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | cut -d ':' -f2 | xargs)
    if [ $charging = "charging" ]; then 
        power="🗲${power}";
    fi

    date=$(date +'%Y-%m-%d %X')
   
    BAR="${power}% | ${date}";
    echo $BAR
}

while display; do sleep 1; done


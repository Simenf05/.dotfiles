#!/bin/env bash

POWER_STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ $POWER_STATUS = "Discharging" ]; then
    POWER_FULL=$(cat /sys/class/power_supply/BAT0/energy_full)
    POWER_NOW=$(cat /sys/class/power_supply/BAT0/energy_now)
    POWER=$((100 * $POWER_NOW / $POWER_FULL))

    if [ $POWER -lt 15 ]; then
        notify-send "Low power: $POWER%"
    fi
fi


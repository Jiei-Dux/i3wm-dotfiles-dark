#! /usr/bin/bash

BATTERY_INFO=($( acpi | awk -F',' '{ print $0 }'))
CHARGE=$((${BATTERY_INFO[3]//%,}))
ICON=""
FORMAT=""

if [[ "${BATTERY_INFO[2]}" == *"Charging"* ]] || [[ "${BATTERY_INFO[2]}" == *"Unknown"* ]] ; then
    ICON="  "
else
    ICON="   "
fi

FORMAT="$FORMAT $ICON $CHARGE%"

echo $FORMAT

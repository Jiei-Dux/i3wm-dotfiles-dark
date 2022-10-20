#! /usr/bin/env bash

# This part checks for old instance and kills it before executing
for pid in $(pgrep -f $0);
do
	if [ $pid != $$ ]; 
	then
		kill $pid
	fi
done

# This part checks your battery using acpi and sends you notification using dunst daemon
while true
do

	Bat_Pct=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	Bat_Stat=$(acpi -b | grep -c "Charging")
	
	# This part checks whether your battery is at __% and tells you the battery is full
	if [ "$Bat_Stat" -eq 1 ]; then	
		if [ "$Bat_Pct" -ge 80 ]; then
			dunstify -t 10000 -u normal "Battery full." "Level: ${Bat_Pct}% "
			
			# This part can play you a notification sound using sox
			#play /path/to/file
		fi

	# This part checks whether your battery is at _% and tells you the battery is low
	elif [ "$Bat_Stat" -eq 0 ]; then
		if [ "$Bat_Pct" -le 25 ]; then
			dunstify -t 10000 -u critical "Low Battery." "Level: ${Bat_Pct}%" "Plug the Charger!"
			
			# This part can play you a notification sound using sox
			#play /path/to/file

		# This part checks if your battery is at _% and suspends your session until you charge your laptop
		elif [ "$Bat_Pct" -le 15 ]; then
			dunstify -t 1000 -u critical "Battery at Critical Level." "Suspending..."
			sleep 10
			systemctl suspend
		fi
	fi
	sleep 300
done

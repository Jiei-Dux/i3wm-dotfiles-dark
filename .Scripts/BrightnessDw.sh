#! /usr/bin/env bash

	while true 
	do
					Curr_Brghtnss=$(brightnessctl i | grep -P -o '[0-9]+(?=%)')
					brightnessctl s 10%- &&
					exit
	done

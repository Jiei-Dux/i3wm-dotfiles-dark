#! /usr/bin/env bash

chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate" | rofi -dmenu -window-title "   Power " -i)

	if [[ $chosen = "Logout" ]]; then
		i3msg-exit
		
		elif [[ $chosen = "Shutdown" ]]; then
			systemctl poweroff
			
			elif [[ $chosen = "Reboot" ]]; then
				systemctl reboot
		
				elif [[ $chosen = "Suspend" ]]; then
					systemctl suspend

					elif [[ $chosen = "Hibernate" ]]; then
						systemctl hibernate
	fi

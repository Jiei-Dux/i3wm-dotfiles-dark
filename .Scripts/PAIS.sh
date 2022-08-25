#! /usr/bin/env bash

menu () { 

	while true
	do
		clear

		echo
		echo "POST ARCH-LINUX INSTALL SCRIPT"
		echo "<---------------------------->"
		echo

		echo
		echo "SYSTEM"
		echo "1.1) Upgrade Packages"
		echo "1.2) Sync Packages"
		echo "1.3) Update Mirrors"
		echo

		echo
		echo "INSTALL"
		echo "2.1) Reflector"
		echo "2.2) Fonts"
		echo "2.3) Media"
		echo "2.4) Gaming"
		echo
		
		echo
		echo "E|e) Exit"
		echo

		echo
		echo "<---------------------------->"
		echo

		read -p "Enter your Choice: " Var1

		case $Var1 in
				1.1)			PacUpg;;
				1.2)			PacUpd;;
				1.3)			RefUpd1;;

				2.1)			InsRef;;
				2.2)			InsFonts;;
				2.3)			InsMedia;;
				2.4)			InsGaming;;

				E|e)			clear && exit;;

		esac
done

}





##############
#   SYSTEM   #
##############

PacUpg () {
		
		clear
		echo "Upgrading Packages... Please wait..."
		sleep 1

		echo
		sudo pacman -Syu
		clear

		echo "Returning to Main Menu..."
		sleep 1
		clear

}

PacUpd () {

		clear
		echo "Synchronizing Packages... Please wait..."
		sleep 1

		echo
		sudo pacman -Syy
		clear

		echo "Returning to Main Menu..."
		sleep 1
		clear

}




#   REFLECTOR   #

RefUpd1 () {
		
		clear
		echo "Have you installed Reflector? y/n"
		read -p "Enter your Choice: " Var2

		case $Var2 in
				y|Y)			RefUpd2;;
				n|N)			InsRef;;

		esac

}

RefUpd2 () {

		clear
		echo "Updating Mirrors... Please wait..."
		sleep 1

		echo
		sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
		clear
		
		echo "Returning to Main Menu..."
		sleep 1
		clear

}

###############
#   INSTALL   #
###############

InsRef () {

		clear
		echo "Installing Reflector... Please wait..."
		sleep 1

		echo
		sudo pacman -S reflector
		clear

		echo "Returning to Main Menu..."
		sleep 1
		clear

}




#   FONTS   #

InsFonts () {
	
		clear

}




#   MEDIA   #

InsMedia () {

		clear

}




#   GAMING   #

InsGaming1 () {

		clear
		echo "Have you enabled multilib yet? y/n"
		read -p "Enter your Choice: " Var3

		case $Var3 in

				y|Y)		InsGaming2;;
				n|N)		echo "Go enable it then..."

		esac

		clear
		echo "Returning to Main Menu..."
		sleep 1
		clear

}

InsGaming2 () {
		
		clear
		echo "Installing Gaming Related Packages... Please wait..."
		sleep 1

		echo
		sudo pacman -Sy wine-staging wine-mono wine-gecko steam

}




############
#   LOOP   #
############

menu

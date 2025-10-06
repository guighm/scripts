#!/bin/bash

update() {
	echo
	echo "Updating Arch Linux..."
	echo
	sudo pacman -Syu --noconfirm
	echo 
	echo "Updating packages from AUR..."
	echo
	yay --noconfirm
	echo
	echo "Updating Flutter..."
	echo
	flutter upgrade
	echo
	echo "System updated successfully! ✅"
	echo
}
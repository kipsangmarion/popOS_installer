#!/bin/bash

# fn to check if package is installed
is_installed(){
	dpkg -l | grep -q $1
}

# list of packages to install
packages=(
	# Add packages here
)

# update
sudo apt update

# install
for package in "${packages[@]}"; do
	if is_installed "$package"; then
		echo "$package is already installed."
	else
		echo "Installing $package..."
		sudo apt install -y "$package"
		if [ $? -eq 0 ]; then
			echo "$package installed successfully."
		else
			echo "Failed to install $package."
		fi
	fi
done

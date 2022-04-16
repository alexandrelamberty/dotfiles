#!/bin/bash
# Link the programs configuration with Stow

installPackages() {
  echo "> Installing Pacman packages..."
}

installConfigs() {
	echo "> Installing configuration files for:"
	input="config-packages.txt"
	while IFS= read -r line; do
		echo "- $line"
		stow -v -d ./config -t ~ -S "$line"
	done <"$input"
}

installScripts() {
	echo "> Installing scripts..."
	stow -d ./scripts -t ~ -S bin
}

installData() {
	echo "> Installing dictionaries, fonts, icons, sounds and wallpapers..."
	stow -d ./data -t ~ -S dict
	stow -d ./data -t ~ -S fonts
	stow -d ./data -t ~ -S icons
	stow -d ./data -t ~ -S sounds
	stow -d ./data -t ~ -S wallpapers
}

installPackages
installConfigs
installScripts
installData

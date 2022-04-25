#!/bin/bash
# Link the programs configuration with Stow

installPackages() {
  echo "> Installing Pacman packages..."
	# TODO: implement this
}

# TODO integrate zsh, tmux and nvim config as sub module
# Add condition if it one of above stow from the `config`
# folder inside the sub module
installConfigs() {
	echo "> Installing configuration files for:"
	# TODO: replace by install.ini?
	input="config-packages.txt"
	while IFS= read -r package; do
		echo "- $package"
		# stow -d ./config -vSt ~ "$package"
		"$package/install.sh"
	done <"$input"
}

installScripts() {
	echo "> Installing scripts..."
	stow -d ./bin -vSt ~ executable
}

installData() {
	echo "> Installing dictionaries, fonts, icons, sounds and wallpapers..."
	stow -d ./data -vSt ~ dict
	stow -d ./data -vSt ~ fonts
	stow -d ./data -vSt ~ icons
	stow -d ./data -vSt ~ sounds
	stow -d ./data -vSt ~ wallpapers
}

installPackages
installConfigs
installScripts
installData

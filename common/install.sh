#!/bin/bash
# make symlinks to ~
# Need `sudo` to be installed on the system.

# Create function for each program. Then use a text file using lines
# delimiter to pass the programs to install?
# Check before linking files if the program is installed ?

echo "Installing config files"

# alacritty
ln -sf "$PWD/alacritty/alacritty.yml" "$HOME/.alacritty.yml"

# alsa
ln -sf "$PWD/alsa/asoundrc" "$HOME/.asoundrc"

# bash
ln -sf "$PWD/bash/bashrc" "$HOME/.bashrc"
ln -sf "$PWD/bash/bash_profile" "$HOME/.bash_profile"

# dmenu
# Need to fork it and customize it

# dunst
[[ -d "$HOME/.config/dunst" ]] || mkdir -p "$HOME/.config/dunst"
if [[ -d "$HOME/.config/dunst" ]]; then
  ln -sf "$PWD/dunst/dunstrc" "$HOME/.config/dunst/dunstrc"
fi

# irssi
[[ -d "$HOME/.irssi" ]] || mkdir -p "$HOME/.irssi"
if [[ -d "$HOME/.irssi" ]]; then
  ln -sf "$PWD/irssi/config" "$HOME/.irssi/config"
fi

# mpv
[[ -d "$HOME/.config/mpv" ]] || mkdir -p "$HOME/.config/mpv"
if [[ -d "$HOME/.config/mpv" ]]; then
  ln -sf "$PWD/mpv/mpv.conf" "$HOME/.config/mpv/mpv.conf"
  ln -sf "$PWD/mpv/input.conf" "$HOME/.config/mpv/input.conf"
fi

# mutt
# Need to hide crendetials see arch wiki
[[ -d "$HOME/.config/mutt" ]] || mkdir -p "$HOME/.config/mutt"
if [[ -d "$HOME/.config/mutt" ]]; then
  ln -sf "$PWD/mutt/muttrc" "$HOME/.config/mutt/muttrc"
  ln -sf "$PWD/mutt/colors" "$HOME/.config/mutt/colors"
fi

# newsboat
[[ -d "$HOME/.newsboat" ]] || mkdir -p "$HOME/.newsboat"
if [[ -d "$HOME/.newsboat" ]]; then
  ln -sf "$PWD/newsboat/config" "$HOME/.newsboat/config"
  ln -sf "$PWD/newsboat/colors" "$HOME/.newsboat/colors"
fi

# nitrogen -> .config/nitrogen/
[[ -d "$HOME/.config/nitrogen" ]] || mkdir -p "$HOME/.config/nitrogen"
if [[ -d "$HOME/.config/nitrogen" ]]; then
  ln -sf "$PWD/nitrogen/nitrogen.cfg" "$HOME/.config/nitrogen/nitrogen.cfg"
fi

# pacman
sudo ln -sfn "$PWD/pacman/pacman.conf" "/etc/pacman.conf"

# picom
[[ -d "$HOME/.config/picom" ]] || mkdir -p "$HOME/.config/picom"
if [[ -d "$HOME/.config/picom" ]]; then
  ln -sf "$PWD/picom/picom.conf" "$HOME/.config/picom/picom.conf"
fi

# qutebrowser 
[[ -d "$HOME/.config/qutebrowser" ]] || mkdir -p "$HOME/.config/qutebrowser"
if [[ -d "$HOME/.config/qutebrowser" ]]; then
  ln -sf "$PWD/qutebrowser/config.py" "$HOME/.config/qutebrowser/config.py"
fi

# ranger
[[ -d "$HOME/.config/ranger" ]] || mkdir -p "$HOME/.config/ranger"
if [[ -d "$HOME/.config/ranger" ]]; then
  ln -sf "$PWD/ranger/rc.conf" "$HOME/.config/ranger/rc.conf"
  ln -sf "$PWD/ranger/rifle.conf" "$HOME/.config/ranger/rifle.conf"
fi

# spreadsheet calculator, sc
ln -sf "$PWD/sc/scrc" "$HOME/.scrc"

# screenkey - "~/.config/screenkey.json
ln -sf "$PWD/screenkey/screenkey.json" "$HOME/.config/screenkey.json"

# tmux
ln -sf "$PWD/tmux/tmux.conf" "$HOME/.tmux.conf"

# urxvt - Will be sourced by Xresource
ln -sf "$PWD/urxvt/urxvt" "$HOME/.urxvt/urxvt"

# vim
ln -sf "$PWD/vim/vimrc" "$HOME/.vimrc"

#vscode
ln -sf "$PWD/vscode/keybindings.json"
"$HOME/.config/Code - OSS/User/keybindings.json"

# xrdb
ln -sf "$PWD/xrdb/Xresources" "$HOME/.Xresources"

# xscreensaver
ln -sf "$PWD/xscreensaver/xscreensaver" "$HOME/.xscreensaver"

# youtube-dl
[[ -d "$HOME/.config/youtube-dl" ]] || mkdir -p "$HOME/.config/youtube-dl"
if [[ -d "$HOME/.config/youtube-dl" ]]; then
  ln -sf "$PWD/youtube-dl/config" "$HOME/.config/youtube-dl/config"
fi

# zathura
[[ -d "$HOME/.config/zathura" ]] || mkdir -p "$HOME/.config/zathura"
if [[ -d "$HOME/.config/zathura" ]]; then
  ln -sf "$PWD/zathura/zathurarc" "$HOME/.config/zathura/zathurarc"
fi

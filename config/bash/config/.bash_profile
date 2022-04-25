# ~/.bash_profile
[[ -f ~/.bashrc ]] && . ~/.bashrc # Source .bashrc

# Startx Automatically
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
 . startx
 logout
fi
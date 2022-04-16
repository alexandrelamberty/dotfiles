#!/bin/sh
# ~/.xinitrc
# https://wiki.archlinux.org/index.php/Xinit

# Resources

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Keyboard --------------------------------------------------------------------

# To be moved in the graphical environment startup?
# setxkbmap -option ctrl:nocaps
# setxkbmap -option 'ctrl:rshift_escape'
# xset r rate 210 40
# Speedy keys
# xset r rate 210 40
# remap caps to escape
# setxkbmap -option caps:escape
# swap escape and caps
# setxkbmap -option caps:swapescape

# Keyring ---------------------------------------------------------------------

eval $(gnome-keyring-daemon --start)

export SSH_AUTH_SOCK # TODO: check duplicate ? right place to be

# Programs --------------------------------------------------------------------

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3 & 		# i3 window manager
#picom -b &		# Picom (Compton) compositor 
unclutter 		# Unclutter screen with mouse
#xscreensaver-no-splash	# Xscreensaver


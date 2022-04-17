Dotfiles

![Screenshot](./.readme/screenshot_08-04-21-17:35:54.png)

## TODO

- [ ] Split this configuration into git branches? 
- [ ] Refactor installation from Stow to custom?
- [ ] Clean fonts, add wallpapers, icons and sounds
- [ ] Check for security issues, mutt and others need credential
- [ ] Document some configurations, bash, neovim ... or refer to notes?

## Requirements

> This configuration is based to run on an [Arch Linux]() operating system.

## Installation

Check and run the `install.sh` script.

```
./install.sh 
```

See `pacman-packages.txt` to view all the required required packages.

## Configuration

- i3
	Configure workspaces and monitors `~/.config/i3/config` 
	> FIXME: Workspaces configuration include not working!

- Polybar
	Configure system paths and hardware `~/.config/polybar/hardware.ini`

## Architecture

The configuration is split in three main directory: 

- `config` contains all the programs configuration files. They mostly in
	`XDG_CONFIG_HOME` or `HOME`.
- `data` contains resources like: dictionaries, icons, sounds used by programs.
- `scripts` that contains all the scripts used by my configurations and
	programs.

## Configuration

### Base environment

* Bash (Shell)
* Git (Version control)
* Irssi (IRC client)
* Mutt (Email client)
* Neovim (Text editor)
* Newsboat (News feed client)
* Pacman (ArchLinux package manager)
* Ranger (File)
* Surf (Browser)
* Sxiv (Image viewer)
* Tmux (Terminal multiplexing)
* Urxvt (Terminal emulator)
* Vim (Text editor)
* Xterm (Terminal emulator)
* Zathura (PDF viewer)
* Zsh (Shell)

## Graphic environment

* Dmenu (Menu)
* Dunst (Notification)
* GTK (GUIs)
* Polybar (Status bar)
* i3 (Window manager)

## Utils

* Sc (Spreadsheet calculator)
* Htop (System monitoring)
- Alsa (Advanced Linux Sound Architecture)
- Bat (Cat like)
- Cloc (Count line of code)
- Colorpicker (A color picker! :))
- Cups (Printer) TODO: Need config
- FFmpeg (Video tools)
- Freerdp (Remote desktop)
- Fzf
- Jq
- Mpv (Video player)
- Nitrogen (Desktop background)
- Nmcli (Network manager)
- Pandoc (Markup converter)
- Pcmanfm (File manager)
- Screenkey (On-Screen Keyboard)
- Scrot (Screenshot)
- Ueberzug (Image preview, I use it for Ranger)
- Xdotool (X11 automation; keyboard, mouse, windows)
- Xev (X events)
- Xinit
- Xmodmap (Keymaps and pointer button mappings in Xorg)
- Xprop (Window and font properties in an X server)
- Xrdb (Xresource database manager)
- Xscreensaver
- Zenity (GTK UIS)

## Additional software

- Aseprite (Pixel graphics editor)
- Galculator (Calculator)
- Gimp (Image manipulation program)
- Inkscape (Vector graphics editor)
- Kdenlive (Video editing)
- Postman (API testing)
- Remmina (Remote desktop)
- VScode (Source code editor)

## Programming

See Neogit

- Android SDK
- Clang (C, C++)
- Composer
- Dart
- Docker
- Flutter
- GO
- NPM
- Perl
- Ruby
- Yarn
- SQL sqlite3, sqlitebrowser, sqldiff 

## Data

Data and media used by programs and configurations.

### Dict

The spelling dictionaries I use in Neovim or Vim.

They will be symlinked to `XDG_DATA_HOME/icons`

### Fonts

Fonts used in Xresources, GTK, i3 and Polybar. 

They will be symlinked to `XDG_DATA_HOME/fonts`

> Updates Xresources references 


### Icons

The icons are mainly and only at the moment used for the notification system
[Dunst](https://github.com/dunst-project/dunst).

They will be symlinked to `XDG_DATA_HOME/icons`

### Mime

They will be symlinked to `XDG_DATA_HOME/mime`

### Sounds

They will be symlinked to `XDG_DATA_HOME/sounds`

### Wallpapers

They will be symlinked to `XDG_DATA_HOME/wallpapers`

## References

- [XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)
- <https://wiki.archlinux.org/title/XDG_user_directories>
- <https://www.freedesktop.org/wiki/Specifications/>

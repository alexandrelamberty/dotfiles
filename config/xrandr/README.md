# Xrandr configuration

> TODO: This need to be sourced by all login shell using Xrandr.

Create a local configuration by editing the `~/.config/xrandr/config` file.

Sample configuration for a laptop monitor
```bash
#!/bin/sh
xrandr --output eDP1 --mode 1280x800 
```

Sample configuration for 3 monitors 
```bash
#!/bin/sh
xrandr --output VGA1 --mode 1366x768 --pos 0x0 --rotate right \
	--output DVI-D-1-1 --primary --mode 1920x1080 --pos 768x143 --rotate normal \
	--output DVI-I-1-1 --mode 1440x900 --pos 2688x233 --rotate normal \
```
## References

- <https://wiki.archlinux.org/title/xrandr>

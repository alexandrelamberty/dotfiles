# Desktop entries

## Create a new .desktop file, see ´foobar.desktop´

```conf
[Desktop Entry]
Name=Foobar
GenericName=Foo bar
GenericName[fr]=Foo bar
TryExec=foobar
Exec=foobar %F
Terminal=true
Type=Application
Keywords=Foo;bar;
Keywords[fr]=Foo;bar;
Icon=foobar
Categories=Utility;TextEditor;
StartupNotify=false
```

### Validations

```bash
desktop-file-validate <your desktop file>
```

### Installation

```bash
desktop-file-install --dir=$HOME/.local/share/applications ~/app.desktop
```

### Update the database

```bash
update-desktop-database ~/.local/share/applications
```

## Reference

- <https://wiki.archlinux.org/title/Desktop_entries>
  https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html#recognized-keys

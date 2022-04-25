# ~/.config/mutt/accounts/alexandrelamberty@gmail.com
# vim: filetype=muttrc
## Gmail Personal Account

# TODO https://wiki.archlinux.org/index.php/Mutt#Passwords_management

## Receive options.
set imap_user=alexandrelamberty@gmail.com
set imap_pass=sys@4Admin4lilo
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed = +Drafts
set record = +Sent

## Send options.
set smtp_url=smtps://user:alexandrelamberty@smtp.gmail.com
set realname='User X'
set from=alexandrelamberty@gmail.com
set hostname="gmail.com"
set signature="Alexandre Lamberty"

# Connection options
set ssl_force_tls = yes
unset ssl_starttls

## Hook -- IMPORTANT!
account-hook $folder "set imap_user=alexandrelamberty@gmail.com imap_pass=sys@4Admin4lilo"

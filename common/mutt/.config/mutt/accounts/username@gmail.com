## Gmail Personal Account
# Fill this file accordingly, rename it with your email address and move it to the accounts folder.

# TODO https://wiki.archlinux.org/index.php/Mutt#Passwords_management

## Receive options.
set imap_user=username@gmail.com
set imap_pass=password
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed = +Drafts
set record = +Sent

## Send options.
set smtp_url=smtps://user:username@smtp.gmail.com
set realname='User X'
set from=username@gmail.com
set hostname="gmail.com"
set signature="Signature"

# Connection options
set ssl_force_tls = yes
unset ssl_starttls

## Hook -- IMPORTANT!
account-hook $folder "set imap_user=username@gmail.com imap_pass=password"

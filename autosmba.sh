#!/bin/bash

opkg install shadow-common
opkg install shadow-useradd
send -i 's/invalid users = root/# invalid users = root/g' /etc/samba/smb.conf.template
smbpasswd -a root
echo -----------------------
echo add smba user success!

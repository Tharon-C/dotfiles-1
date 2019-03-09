gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24

mkdir /media/usb
chown $USER /media/
chmod 0777 /media/usb
cat >> /etc/fstab
/dev/sdc1 /media/usb auto user,umask=000,utf8,noauto 0 0
^D

#!/usr/bin/env bash

mkdir -p /var/log/z01

# Log stdout & stderr
exec > >(tee -a -i /var/log/z01/sessionLogin.log) 2>&1

# Treat unset variables as an error when substituting.
# Exit immediately if a command exits with a non-zero status.
# Print commands and their arguments as they are executed.
set -uex

# Separate tokens on newlines only
IFS='
'

# The value of this parameter is expanded like PS1 and the expanded value is the
# prompt printed before the command line is echoed when the -x option is set
# (see The Set Builtin). The first character of the expanded value is replicated
# multiple times, as necessary, to indicate multiple levels of indirection.
# \D{%F %T} prints date like this : 2019-12-31 23:59:59
PS4='-\D{%F %T} '


if [[ "$USER" == 'bocal' ]]; then
	exit
fi

echo "user '$USER' logged in"


if test -e /dev/disk/by-partlabel/01-home; then
	mount -o noatime /dev/disk/by-partlabel/01-home /mnt
else
	 #Fails if no local partition is found
	test -e /dev/disk/by-partlabel/01-tmp-home

	 #We don't care about data consistency since the partition is temporary so disable journaling
	/sbin/mke2fs -t ext4 -O ^has_journal -F /dev/disk/by-partlabel/01-tmp-home
	
	mount -o noatime,nobarrier /dev/disk/by-partlabel/01-tmp-home /mnt
fi


user_path=/mnt/.01/user
temp_path=/mnt/.01/tmp

# Unmount student home if needed
umount /home/student ||:

systemd-run /usr/local/bin/reset_home

mkdir -p "$user_path" "$temp_path"
chown -R "$USER":"$USER" "$user_path" "$temp_path"

# Mount home as an overlay filesystem
mount -t overlay -o lowerdir=/home/student,upperdir="$user_path",workdir="$temp_path" overlay /home/student
mkdir -p /home/student/.cache
mount -t tmpfs -o size=2G tmpfs /home/student/.cache

# Run autologout script in background
/usr/share/z01/hooks/autoLogout.sh &

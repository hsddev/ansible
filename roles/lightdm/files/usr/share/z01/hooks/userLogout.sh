#!/usr/bin/env bash

# Log stdout & stderr
exec > >(tee -i /var/log/z01/sessionLogout.log) 2>&1

# Exit immediately if a command exits with a non-zero status.
set -e

# The value of this parameter is expanded like PS1 and the expanded value is the
# prompt printed before the command line is echoed when the -x option is set
# (see The Set Builtin). The first character of the expanded value is replicated
# multiple times, as necessary, to indicate multiple levels of indirection.
# \D{%F %T} prints date like this : 2019-12-31 23:59:59
PS4='-\D{%F %T} '

# Print commands and their arguments as they are executed.
set -x

if [[ "$USER" == "bocal" ]]; then
	exit
fi

passwd -d "$USER" ||:

umount -l /home/student ||:
umount -l /dev/disks/by-partlabel/01-tmp-home ||:

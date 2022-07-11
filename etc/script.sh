#!/bin/sh
chown 999 /etc/munge/munge.key
mkdir /var/spool/slurmd
su -s /bin/bash -c "munged --key-file /etc/munge/munge.key" munge
# su -c "chmod +rw -R /sys/fs/cgroup"
/usr/sbin/slurmd -D -s
/bin/bash
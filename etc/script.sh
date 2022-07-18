#!/bin/sh
chown 999 /etc/munge/munge.key
mkdir /var/spool/slurmd
su -s /bin/bash -c "munged --key-file /etc/munge/munge.key" munge
/usr/sbin/slurmd -D -s
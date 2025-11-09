#!/bin/bash
LOCKFILE=/tmp/pacman-update.lock
if [ -e "$LOCKFILE" ]; then
    echo "Another update is running, exiting."
    exit 1
fi
touch "$LOCKFILE"
/usr/bin/pacman -Syu --noconfirm >> /var/log/pacman-auto-update.log 2>&1
rm "$LOCKFILE"


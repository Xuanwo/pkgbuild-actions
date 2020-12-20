#!/bin/bash

# Make sure all files are belong to builder
chown builder:builder -R .

# Sync database before makepkg
pacman -Sy
# Start build
su builder -s /bin/bash -c "makepkg --force --syncdeps --noconfirm"

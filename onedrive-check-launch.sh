#!/bin/sh
#########################################################################
#
# ABOUT THIS PROGRAM
#
# NAME
#   OneDrive Check and Launch
#
# SYNOPSIS
# onedrive-check-launch.sh
# Checks if OneDrive is running and if it isn't launches the application.
# Designed to be run on Device Check-in to ensure the CloudStorage is
# mounted.
#########################################################################
#
# HISTORY
#
#   Version: 1.0
#
#   - 1. Michael Tanner, 28.01.2022 Tested script through Mosyle.
#
#########################################################################
#

if ! pgrep '^OneDrive$' -l; then
  echo OneDrive not running...
  open -a /Applications/OneDrive.app/Contents/MacOS/OneDrive;
  echo OneDrive Launched
fi
echo OneDrive Running
exit

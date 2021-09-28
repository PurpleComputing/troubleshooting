#!/bin/sh
#########################################################################
#
# ABOUT THIS PROGRAM
#
# NAME
#   Fix Mac Printer Permissions
#
# SYNOPSIS
# fix-printer-lpadmin.sh
# Add everyone to lpadmin to prevent admin pop up when user trying to
# print.
#########################################################################
#
# HISTORY
#
#   Version: 1.1
#
#   - 1.0 Martyn Watts, 25.06.2021 Initial Script Template Build
#   - 1.1 Michael Tanner, 28.09.2021 Implement Fix Mac Printer Permissions Script
#
#########################################################################
#
/usr/bin/security authorizationdb write system.print.operator allow
/usr/sbin/dseditgroup -o edit -n /Local/Default -a everyone -t group lpadmin

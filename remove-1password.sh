#!/bin/sh
#####################################################################################################
#
# ABOUT THIS PROGRAM
#
# NAME
#   1Password 7.sh -- Removes 1Password 7
#
# SYNOPSIS
#   sudo 1Password 7 Remover.sh
#
####################################################################################################
#
# HISTORY
#
#   Version: 1.0
#
#   - Martyn Watts, 13.08.2021 Initial Build
#   - Michael Tanner, 29.09.2021 Modified Build
#
####################################################################################################
# Script to remove 1Password 7.

appName='1Password 7'
logfile="/Library/Logs/1PasswordRemoverScript.log"
deplog="/var/tmp/depnotify.log"

echo "Status: Installing ${appName}" >> ${deplog}

# Check to see if the App is installed.

    if [[ -e "/Applications/${appName}.app" ]]; then
		/bin/echo "`date`: Uninstalling 1Password Manager" >> ${logfile}
		/bin/echo "`date`: Uninstalling 1Password Manager"
		killall 1Password\ 7
		CurrentUser=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')
		rm -rf /Applications/1Password\ 7.app

    else
		/bin/echo "`date`: 1Password not installed - Skipping" >> ${logfile}
		/bin/echo "`date`: 1Password not installed - Skipping"
    fi
#jamf policy -id 036 >> ${logfile} - Reinstall using Install 1Password Policy
/bin/echo "--" >> ${logfile}
/bin/echo "Command: DeterminateManualStep: 1" >> ${deplog}

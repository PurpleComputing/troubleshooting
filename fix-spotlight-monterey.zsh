#!/usr/bin/env zsh

LOG_NAME="fix_mont_spotlight.log"
LOG_DIR="/Library/Logs/com.purplecomputing.mdm"
PRPLLOGPATH="$LOG_DIR/$LOG_NAME"

echo $(date +%F) Disabling Spotlight Index >> $PRPLLOGPATH
mdutil -Eai off >> $PRPLLOGPATH

sleep 5

echo $(date +%F) Enabling Spotlight Index Part 1 >> $PRPLLOGPATH
mdutil -Eai on >> $PRPLLOGPATH

sleep 5

echo $(date +%F) Enabling Spotlight Index Part 2 >> $PRPLLOGPATH
mdutil -as >> $PRPLLOGPATH

#!/bin/bash
# This script is designed to fix Spotlight indexing issues for outlook
# by restarting Spotlight and pointing it to the Outlook Profiles Folder
# to create a new search index.

echo Turning Spotlight indexing off

/usr/bin/mdutil -i off /

echo Turning Spotlight indexing on

/usr/bin/mdutil -i on /

echo Forcing Spotlight re-indexing on Outlook profiles folder

/usr/bin/mdimport ~/Library/Group\ Containers/UBF8T346G9.Office/Outlook/Outlook\ 15\ Profiles/
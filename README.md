# Troubleshooting Scripts - Public Repository

This repository is a resource that allows us to distribute scripts across multiple MDM tenants with a single point of hosting.

Scripts in this repository are designed to be run from MDM Self Service or from TeamViewer Scripts.

## fix-spot-index.sh
#### Fix Spotlight Indexing Errors
This script is designed to stop Spotlight indexing, clear the indexing cache at the root level and then restart indexing.
##### Command to execute/add to MDM:
`sudo curl -o /tmp/fix-spot-index.sh https://raw.githubusercontent.com/PurpleComputing/troubleshooting/main/fix-spot-index.sh && sudo chmod +x /tmp/fix-spot-index.sh && sudo /tmp/fix-spot-index.sh`

## fix-printer-lpadmin.sh
#### Fix Mac Printer Permissions
This script is designed to add everyone to the lpadmin group to prevent admin pop up when user trying to print.
##### Command to execute/add to MDM:
`sudo curl -o /tmp/fix-printer-lpadmin.sh https://raw.githubusercontent.com/PurpleComputing/troubleshooting/main/fix-printer-lpadmin.sh && sudo chmod +x /tmp/fix-printer-lpadmin.sh && sudo /tmp/fix-printer-lpadmin.sh`

## remove-1password.sh
#### Remove 1Password 7 from device
This script is designed to remove the 1Password 7 application, line 44 can be uncommented to reinstalled using the relevant JAMF Policy ID.
##### Command to execute/add to MDM:
`sudo curl -o /tmp/remove-1password.sh https://raw.githubusercontent.com/PurpleComputing/troubleshooting/main/remove-1password.sh && sudo chmod +x /tmp/remove-1password.sh && sudo /tmp/remove-1password.sh

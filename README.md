# Troubleshooting Scripts - Public Repository

This repository is a resource that allows us to distribute scripts across multiple MDM tenants with a single point of hosting.

Scripts in this repository are designed to be run from MDM Self Service or from TeamViewer Scripts.

## fix-spot-index.sh
#### Fix Spotlight Indexing Errors
This script is designed to stop Spotlight indexing, clear the indexing cache at the root level and then restart indexing.
##### Command to execute:
`To be Added`

## fix-printer-lpadmin.sh
#### Fix Mac Printer Permissions
This script is designed to add everyone to the lpadmin group to prevent admin pop up when user trying to print.
##### Command to execute/add to MDM:
`sudo curl -o /tmp/fix-printer-lpadmin.sh https://raw.githubusercontent.com/PurpleComputing/troubleshooting/main/fix-printer-lpadmin.sh && sudo chmod +x /tmp/fix-printer-lpadmin.sh && sudo /tmp/fix-printer-lpadmin.sh`

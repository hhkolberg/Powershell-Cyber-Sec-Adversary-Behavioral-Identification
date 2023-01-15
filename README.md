# Powershell-Cyber-Sec-Adversary-Behavioral-Identification
# This list of scripts is an example on how to have your system doing a manual ABI if your systems fail, need a manual layer or just try it out for fun. 
See the description below
#
#
#
# Get-NetConnectionProfile.ps1
#
# This script gets the current network connection profile, waits for 300 seconds (5 minutes), and then gets the network connection profile again. 
# If the profiles do not match, it indicates that the network configuration has been changed, which could be a sign of an attacker attempting to 
# establish a foothold on the system.
#
#
# Get-Process.ps1
#
# This script checks for the presence of known malware processes. It does this by getting a list of all processes currently running on the system and 
# then checking if the name of each process is contained within the $maliciousProcesses array. 
# If it does, it indicates that a potentially malicious process has been detected.
#
#
# Get-ScheduledTask.ps1
#
# This script checks for the presence of new or modified scheduled tasks on the system. It does this by getting a list of all scheduled tasks
# that are in a "Ready" state, and then checks if any tasks have been returned. If so, it prints
# the name of the task and indicate that a new or modified scheduled tasks have been detected.
#
#
# Get-StartupItem.ps1
#
# This script checks for any new or modified programs or scripts that are configured to run automatically when a user logs in. 
# It does this by getting a list of the original startup items, waiting for 300 seconds, and then getting a new list of startup items.
# It then compares the two lists and looks for any items that have been added to the new list but are not present in the original list.
#
#
# Get-EventLog.ps1
#
# This script retrieves all the events in the "Security" event log that occurred in the past day. 
# The -LogName parameter specifies that the script should look in the "Security" event log, and the -After parameter specifies that the script should only look 
# at events that occurred after the current date minus one day.
# Then it filters the events by looking for the Event IDs 4624, 4634 and 4647. 4624 relates to successful logon events, 4634 to logoff events 
# and 4647 to system shutdown events.
#
#
# CheckWindows.ps1
#
# This script is used to detect any new files that have been added to the specified directory, in this case "C:\Windows". It does this by getting a list of all 
# files in the directory recursively, waiting for 300 seconds, then gets the list again and compares the two lists for any new files that have been 
# added during the wait time.
#
#
# DetectShares.ps1
#
# This script is used to detect any new shares that have been added to the system. It does this by getting a list of all shares on the system, 
# waiting for 300 seconds, then gets the list again and compares the two lists for any new shares that have been added during the wait time.
#
#
# DetectService.ps1
#
# This script is used to detect any new services that have been added to the system. It does this by getting a list of all services on the system, 
# waiting for 300 seconds, then gets the list again and compares  as above (same logic) the two lists for any new services that have been added during the wait time.
#
#
# DetectSoftware.ps1
#
# This script is used to detect any new software that has been installed on the system. It does this by using the Get-WmiObject cmdlet to get a list of all 
# software products currently installed on the system by querying the Win32_Product WMI class, then the script waits for 300 
# seconds and gets the list again, then it compares the two lists and looks for any software products that have been added during that time.






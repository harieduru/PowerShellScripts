# PowerShell script to restart a single or list of servers
# Usage:
# RestartWindowsServer.ps -userid userdetails -passowrd passworddetails -filePath filepaththatcontainsmachinedetails

Clear-Host
Param(
  [string]$userid,
  [string]$password,
  [string]$filePath
)
Clear-Host
$machines = get-content $filePath
$creds = get-credential $userid\$password
restart-computer -computername $machines -force -credential $creds
# PowerShell script to uninstall an application on target machine
# Usage:
# UninstallWindowsApp.ps -Programs nameoftheprogramtobeuninstalled

Clear-Host
Param(
  [string]$Programs
)
Clear-Host
foreach($program in $programs){
$app = Get-WmiObject -Class Win32_Product | Where-Object {
$_.Name -match “$program”
}
$app.Uninstall()
}
# PowerShell script to Start or Stop a Service
# Usage:
# ChangeServiceState.ps -ServiceName TestService -StartupType Manual/Automatic/Disable -Action Start-Service/Stop-Service

Clear-Host
Param(
  [string]$ServiceName,
  [string]$StartupType,
  [string]$Action
)
$servicePrior = Get-Service $ServiceName
"$ServiceName is now " + $servicePrior.status
Set-Service $ServiceName -startuptype $StartupType
$Action $ServiceName
$serviceAfter = Get-Service $ServiceName
"$ServiceName is now " + $serviceAfter.status
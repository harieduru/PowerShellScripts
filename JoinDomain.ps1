# PowerShell script to add a computer to a domain
# Usage:
# JoinDomain.ps -domain nameofthedomain -userid userdetails -passowrd passworddetails

Clear-Host
Param(
  [string]$domain,
  [string]$userid,
  [string]$password
)
$creds = get-credential $userid\$password
Add-Computer -domainname $domain -cred $creds -passthru -restart
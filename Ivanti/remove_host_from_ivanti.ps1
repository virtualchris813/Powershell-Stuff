param (
    [string]$vmname,
    [string]$mgname
 )

if ([string]::IsNullOrEmpty($vmname) -Or [string]::IsNullOrEmpty($mgname))
{
    Write-Host "vmname, and mgname must not be empty. Exiting!"
    exit 1
}

Remove-MachineGroupItem -Name $mgname -EndpointName $vmname

# This script requires you to run:
#   Set-ExecutionPolicy Unrestricted
#   Get-Module STProtect
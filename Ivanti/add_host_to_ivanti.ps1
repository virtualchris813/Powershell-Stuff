param (
    [string]$vmname,
    [string]$mgname
 )

if ([string]::IsNullOrEmpty($vmname) -Or [string]::IsNullOrEmpty($mgname))
{
    Write-Host "vmname, and mgname must not be empty. Exiting!"
    exit 1
}

# If you use the group default creds, use this command
Add-MachineGroupItem -Name $mgname -EndpointName $vmname

# If you use multiple creds, use this following line and add an input param for it
#Add-MachineGroupItem -Name $mgname -EndpointName $vmname -CredentialFriendlyName $credname
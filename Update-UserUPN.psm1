Function Update-UserUPN {
    [CmdletBinding(DefaultParameterSetName = 'UsingSamAccountName')]
    param (
        [Parameter(Mandatory, ParameterSetName = 'FromOU')]
        [string]$OU,
        [Parameter(Mandatory, ValueFromPipeline, ParameterSetName = 'UsingSamAccountName', Position = 0)]
        [string]$SamAccountName,
        [Parameter()]$ReportOnly
    )
    Process {
        if ($ReportOnly){
            Get-ADUser -SearchBase $OU -filter * -properties EmailAddress | Select UserPrincipalName, EmailAddress, Enabled | Sort-Object EmailAddress
        }
        elseif ($OU) {
            $users = Get-ADUser -filter {Enabled -eq $True} -SearchBase $OU -Properties EmailAddress
            foreach ($user in $users) {
                Set-ADUser -Identity $user.$SamAccountName -UserPrincipalName $user.EmailAddress
            }
        }
        elseif ($SamAccountName) {
            $user = Get-ADUser -Identity $SamAccountName -Properties EmailAddress
            Set-ADUser -Identity $user.SamAccountName -UserPrincipalName $user.EmailAddress
        }
    }
}
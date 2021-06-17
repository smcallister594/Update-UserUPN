Function Update-UserUPN {
    [CmdletBinding(DefaultParameterSetName = 'UsingSamAccountName')]
    param (
        [Parameter(Mandatory, ParameterSetName = 'FromOU')]
        [string]$OU,
        [Parameter(Mandatory, ValueFromPipeline, ParameterSetName = 'UsingSamAccountName', Position = 0)]
        [string]$SamAccountName,
        [Parameter()]
        [switch]
        $ReportOnly
    )
    Process {
        $params = @{
            Properties = 'EmailAddress', 'Description'
        }
        if ($OU) {
            $params['Filter'] = { Enabled -eq $true }
            $params['SearchBase'] = $OU
        } elseif ($SamAccountName) {
            $params['Identity'] = $SamAccountName
        }
        $users = Get-ADUser @params
        if ($ReportOnly) {
            $users | Select-Object UserPrincipalName, EmailAddress, Description | Sort-Object EmailAddress
        } else {
            foreach ($user in $users) {
                Set-ADUser -Identity $user.SamAccountName -UserPrincipalName $user.EmailAddress
            }
        }
    }
}

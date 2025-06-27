$ErrorActionPreference = "Stop"

if(-not $IsWindows) {
    Write-Error "The '$($PSVersionTable.Platform)' platform is not supported."
}

$RegKeys = @{
    'User' = 'HKCU:\Environment'
    'System' = 'HKLM:\System\CurrentControlSet\Control\Session Manager\Environment'
}

function Get-Environment {
    $RegKeys.Keys | ForEach-Object {
        $scope = $_
        $rkey = Get-Item $RegKeys[$_]

        $rkey.GetValueNames() | ForEach-Object {
            $name = $_
            $value = $rkey.GetValue($name, $null, 'DoNotExpandEnvironmentNames')

            [PSCustomObject]@{
                Scope = $scope
                Name = $name
                Value = $value
            }
        }
    }
}

Set-Alias genv Get-Environment

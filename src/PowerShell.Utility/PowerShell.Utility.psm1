$ErrorActionPreference = 'Stop'

function Assert-WindowsPlatform {
    if(-not $IsWindows) {
        Write-Error 'The Windows platform required.'
    }
}

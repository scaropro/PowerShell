$ErrorActionPreference = "Stop"

if(-not $IsWindows) {
    Write-Error "The '$($PSVersionTable.Platform)' platform is not supported."
}

function Reset-SystemTray {
    Stop-Process -Name 'explorer' -Force -ErrorAction Stop

    Remove-Item 'HKCU:\Control Panel\NotifyIconSettings' -Recurse -Force `
        -ErrorAction SilentlyContinue

    Remove-ItemProperty `
        'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify\' `
        -Name 'IconStreams','PastIconsStream' -ErrorAction SilentlyContinue

    Start-Process 'explorer'
}

Set-Alias rstray Reset-SystemTray

$ErrorActionPreference = "Stop"

$rgen = $IsWindows ? "$env:USERPROFILE\.dotnet\tools\reportgenerator.exe" : (which reportgenerator)

if(-not (Get-Command $rgen -ErrorAction SilentlyContinue)) {
    Write-Error "The '$rgen' executable is not found."
}

function New-CodeCoverageReport {
    [CmdletBinding()]
    param (
        [Parameter(Position = 0)]
        [string]
        $OutDir,

        [switch]
        $Show
    )

    if(-not $OutDir) {
        $p = [System.IO.Path]
        $OutDir = Join-Path $p::GetTempPath() $p::GetRandomFileName()
    }

    $stderr = (& $rgen -reports:**/coverage.* -targetdir:$OutDir -reporttypes:Html 2>&1)

    if($?) {
        $indexhtml = Join-Path $OutDir 'index.html'

        if($Show) {
            Invoke-Item $indexhtml
        }
        else {
            Write-Output $indexhtml
        }

    }
    else {
        Write-Error ("", $stderr | Out-String)
    }
}

Set-Alias nccr New-CodeCoverageReport

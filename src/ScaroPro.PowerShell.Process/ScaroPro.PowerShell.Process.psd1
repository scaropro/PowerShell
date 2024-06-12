@{
RootModule = 'ScaroPro.PowerShell.Process.psm1'
ModuleVersion = '1.0.0'
GUID = '8be0e042-7f2f-47c0-ae17-25dad227be6f'
Author = 'Scaro.Pro'
CompanyName = 'Scaro.Pro'
Copyright = '(c) Scaro.Pro, 2025'
Description = 'The Process module.'
NestedModules = @()
FunctionsToExport = 'Get-ParentProcess', 'Get-CurrentProcess'
CmdletsToExport = @()
AliasesToExport = 'pscur', 'gpscur', 'gpspar', 'pspar'
PrivateData = @{
    PSData = @{
    } 
} 
}

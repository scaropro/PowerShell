@{
RootModule = 'ScaroPro.PowerShell.Content.psm1'
ModuleVersion = '1.0.0'
GUID = '10243b86-4986-434e-b4fc-b4ecd39d7d32'
Author = 'Scaro.Pro'
CompanyName = 'Scaro.Pro'
Copyright = '(c) Scaro.Pro, 2025'
Description = 'The Content module.'
NestedModules = @()
FunctionsToExport = 'Update-ContentEolToUnix', 'Update-ContentEol', 'Compare-Content', 
               'Update-ContentEolToDos', 'Update-Content'
CmdletsToExport = @()
AliasesToExport = 'udeol', 'dos2unix', 'unix2dos', 'udc', 'crc'
PrivateData = @{
    PSData = @{
    } 
} 
}

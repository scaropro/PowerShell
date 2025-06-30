@{
ModuleVersion = '1.0.0'
GUID = 'b19e8c97-93b2-4dfd-9cd8-de4d77e225b7'
Author = 'rnovo'
CompanyName = 'rnovo'
Copyright = '(c) rnovo, 2025'
Description = 'The Utility module.'
NestedModules = @('NestedModules\Content.psm1', 
               'NestedModules\Password.psm1', 
               'NestedModules\VisualStudio.psm1', 
               'NestedModules\VSCode.psm1', 
               'NestedModules\WebSearch.psm1')
FunctionsToExport = 'Update-ContentEolToUnix', 'Compare-Content', 'Update-Content', 
               'Update-ContentEol', 'Update-ContentEolToDos', 'Get-RandomPassword', 
               'Test-PasswordStrength', 'Start-VisualStudio', 'Get-VisualStudio', 
               'Get-VSCode', 'Start-VSCode', 'Search-Web', 'Search-MS', 'Search-Bing', 
               'Search-Api', 'Get-WebSearch'
CmdletsToExport = @()
VariablesToExport = '*'
AliasesToExport = 'unix2dos', 'crc', 'udeol', 'fdiff', 'dos2unix', 'udc', 'sed', 'gpwd', 'tpwd', 
               'savs', 'sacode', 'srapi', 'srbing', 'srweb', 'gwse', 'srms'
PrivateData = @{
    PSData = @{
    } # End of PSData hashtable
} # End of PrivateData hashtable
}

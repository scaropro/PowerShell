@{
ModuleVersion = '1.0.0'
GUID = 'b19e8c97-93b2-4dfd-9cd8-de4d77e225b7'
Author = 'rnovo'
CompanyName = 'rnovo'
Copyright = '(c) rnovo, 2025'
Description = 'The Utility module.'
NestedModules = @('NestedModules\Password.psm1', 
               'NestedModules\VisualStudio.psm1', 
               'NestedModules\VSCode.psm1', 
               'NestedModules\WebSearch.psm1')
FunctionsToExport = 'Test-PasswordStrength', 'Get-RandomPassword', 'Get-VisualStudio', 
               'Start-VisualStudio', 'Get-VSCode', 'Start-VSCode', 'Search-Bing', 
               'Search-MS', 'Search-Web', 'Get-WebSearch', 'Search-Api'
CmdletsToExport = @()
VariablesToExport = '*'
AliasesToExport = 'tpwd', 'gpwd', 'savs', 'sacode', 'gwse', 'srbing', 'srapi', 'srms', 'srweb'
PrivateData = @{
    PSData = @{
    } # End of PSData hashtable
} # End of PrivateData hashtable
}

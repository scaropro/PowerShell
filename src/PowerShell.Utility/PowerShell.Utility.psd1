@{
RootModule = 'PowerShell.Utility.psm1'
ModuleVersion = '1.0.0'
GUID = 'b19e8c97-93b2-4dfd-9cd8-de4d77e225b7'
Author = 'rnovo'
CompanyName = 'rnovo'
Copyright = '(c) rnovo, 2025'
Description = 'The Utility module.'
NestedModules = @('NestedModules\Password.psm1', 
               'NestedModules\VisualStudio.psm1', 
               'NestedModules\VSCode.psm1')
FunctionsToExport = 'Assert-WindowsPlatform', 'Test-PasswordStrength', 
               'Get-RandomPassword', 'Get-VisualStudio', 'Start-VisualStudio', 
               'Get-VSCode', 'Start-VSCode'
CmdletsToExport = @()
VariablesToExport = '*'
AliasesToExport = 'tpwd', 'gpwd', 'savs', 'sacode'
PrivateData = @{
    PSData = @{
    } # End of PSData hashtable
} # End of PrivateData hashtable
}

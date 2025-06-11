@{
    ModuleVersion = '1.0.0'
    RootModule = 'quick_access.psm1'
    FunctionsToExport = @(
        'Enter-QuickAccess',
        'Open-QuickAccessExplorer',
        'Add-QuickAccess',
        'Remove-QuickAccess',
        'Rename-QuickAccess',
        'Show-QuickAccessStatus',
        'Show-QuickAccessPath',
        'Show-QuickAccessList',
        'Enter-QuickAccessFolder',
        'Get-QuickAccessOutput',
        'Open-QuickFileAccess',
        'Add-QuickFileAccess',
        'Remove-QuickFileAccess',
        'Show-QuickFileAccessPath',
        'Show-QuickFileAccessList',
        'Get-QuickFileAccessOutput'
    )

    CompatiblePSEditions = @('Desktop', 'Core')
	HelpInfoUri = 'https://github.com/June-10-cloudy/QuickAccess'
}
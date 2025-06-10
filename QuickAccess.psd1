@{
    ModuleVersion = '1.0.0'
    RootModule = 'quick_access.psm1'
    FunctionsToExport = @(
        'qa'
        'qaexplorer',
        'qaadd',
        'qaremove',
        'qarename',
        'qacheck',
        'qapath',
        'qalist',
        'qafind',
        'qaoutput',
        'qf',
        'qfadd',
        'qfremove',
        'qfpath',
        'qflist',
        'qfoutput'
    )
    CompatiblePSEditions = @('Desktop', 'Core')
	HelpInfoUri = 'https://github.com/June-10-cloudy/QuickAccess/tree/master/docs'
}
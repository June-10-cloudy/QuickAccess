---
schema: 2.0.0
external help file: QuickAccess-Help.xml
---
# about-QuickAccess
## SHORT DESCRIPTION
QuickAccess is a module that recreates the Quick Access and Favorites features of File Explorer in a CUI environment.
## LONG DESCRIPTION
QuickAccess is a set of PowerShell cmdlets designed to simplify the management and use of frequently accessed folders and files. It allows you to quickly navigate to the required folder or file path by narrowing down targets using fuzzy search.
## COMMANDLETS
Enter-QuickAccess        : Navigates to a registered path.
Open-QuickAccessExplorer : Opens a registered path in File Explorer.
Add-QuickAccess          : Registers the current path to QuickAccess.
Remove-QuickAccess       : Unregisters a key (for folders).
Rename-QuickAccess       : Renames a registered key.
Show-QuickAccessStatus   : Checks if the current path is registered.
Show-QuickAccessPath     : Displays the absolute path corresponding to a registered key.
Show-QuickAccessList     : Lists all keys for registered folder paths.
Enter-QuickAccessFolder  : Lists subfolders within the current path.
Get-QuickAccessOutput    : Outputs QuickAccess results as string objects (for folders).
Open-QuickFileAccess     : Opens a registered file with its default application.
Add-QuickFileAccess      : Registers a file to QuickAccess.
Remove-QuickFileAccess   : Unregisters a key (for files).
Show-QuickFileAccessPath : Displays the absolute path corresponding to a registered key.
Show-QuickFileAccessList : Lists all keys for registered file paths.
Get-QuickFileAccessOutput: Outputs QuickAccess results as string objects (for files).
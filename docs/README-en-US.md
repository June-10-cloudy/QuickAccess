# QuickAccess for PowerShell

## What is QuickAccess?
QuickAccess is a PowerShell module that recreates the Quick Access and Favorites features of File Explorer in a Command-Line Interface (CUI) environment. It provides a set of PowerShell cmdlets to simply manage and utilize frequently accessed folders and files. You can quickly reach the desired folder or file path by narrowing down targets with fuzzy search.

## Commands & Aliases 
### Folder-related
- Enter-QuickAccess        : qa  : Navigate to a registered path
- Open-QuickAccessExplorer : qae : Open a registered path in File Explorer
- Add-QuickAccess          : qaa : Register the current path to QuickAccess
- Remove-QuickAccess       : qax : Unregister a key (for folders)
- Rename-QuickAccess       : qar : Rename a registered key
- Show-QuickAccessStatus   : qas : Check if the current path is registered
- Show-QuickAccessPath     : qap : Display the absolute path corresponding to a registered key
- Show-QuickAccessList     : qal : List all registered folder path keys
- Enter-QuickAccessFolder  : qaf : List subfolders within the current path
- Get-QuickAccessOutput    : qao : Output QuickAccess results as string objects (for folders)
### File-related
- Open-QuickFileAccess     : qf  :  Open a registered file with its default application
- Add-QuickFileAccess      : qfa : Register a file to QuickAccess
- Remove-QuickFileAccess   : qfx : Unregister a key (for files)
- Show-QuickFileAccessPath : qfp : Display the absolute path corresponding to a registered file key
- Show-QuickFileAccessList : qfl : List all registered file path keys
- Get-QuickFileAccessOutput: qfo : Output QuickAccess results as string objects (for files)

## nstallation

### Install from PowerShell Gallery (Recommended)
You can easily install the module using the following command:

```powershell
Install-Module -Name QuickAccess -Scope CurrentUser
```

To use the module, you need to import it into your PowerShell session.

```powershell
Import-Module -Name QuickAccess
```

If you want to use it every time, you can configure your PowerShell Profile to automatically import the module when the terminal starts.
First, check your Profile path (the Profile name may vary depending on your environment):

```powershell
$PROFILE
C:\Users\username\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```
Open your Profile file with Notepad or another editor, and add the following line at the end:

```powershell
Import-Module QuickAccess
```

Restart your terminal and try running "Get-Command Enter-QuickAccess".
If the following output appears, the setup is successful:

```powershell
PS C:\Users\username\Documents\PowerShell\Modules\QuickAccess> Get-Command Enter-QuickAccess

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Enter-QuickAccess                                  1.0.0      QuickAccess
```


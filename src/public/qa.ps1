<#
.SYNOPSIS
Navigates to a path registered in QuickAccess.
.DESCRIPTION
The "Enter-QuickAccess" command lets you quickly move to a path registered in 
QuickAccess. If you specify a fuzzyKey, it performs a partial 
keyword match and displays a filtered list of matching keys.
If no fuzzyKey is specified, all registered paths are listed
for selection.
.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
For more information on QuickAccess, see Get-Help QuickAccess.
.EXAMPLE
When no fuzzyKey is specified, this example displays
a full list of registered items and moves to the selected index.
...
PS C:\Users\[username]\Desktop> qa
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
PS C:\Users\[username]\Documents\FolderB> 
...
.EXAMPLE 
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords
containing "A".
If multiple matches are found, a list is displayed.
...
PS C:\Users\[username]\Desktop> qa A
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
PS C:\Users\[username]\Desktop\FolderA2> 
...
.EXAMPLE
fuzzyKey is specified. Only one match found. In this case, 
it moves directly to that path.
...
PS C:\Users\[username]\Desktop> qa B
PS C:\Users\[username]\Documents\FolderB> 
...
#>
function Enter-QuickAccess {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Folders 
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA MOVE CURRENT"
    if ($null -ne $selectedKey) {
        $folderPath = $hash[$selectedKey]
        Set-Location $folderPath
    }
}

<#
.SYNOPSIS
Opens a path registered in QuickAccess with File Explorer.
.DESCRIPTION
You can open a path registered in QuickAccess with File Explorer
using "Open-QuickAccessExplorer " or "qae".If you specify a fuzzyKey, it 
performs a partial keyword match search and displays a filtered
list of corresponding keys.If no fuzzyKey is specified, all 
registered items are displayedin a list.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
"Open-QuickAccessExplorer " or "qae" uses explorer.exe to open folders.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full
list of registered items and opens the selected index.
...
PS C:\Users\[username]\Desktop> qae
--------------------------------
QA OPEN EXPLORER
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
# File Explorer opens to the selected path.
...
.EXAMPLE
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for 
keywords containing "A".
If multiple matches are found, a list is displayed.
...
PS C:\Users\[username]\Desktop> qae A
--------------------------------
QA OPEN EXPLORER
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
# File Explorer opens to the selected path.
...
.EXAMPLE
fuzzyKey is specified. Only one match found. In this case, 
it opens that path in File Explorer.
...
PS C:\Users\[username]\Desktop> qae B
# File Explorer opens to the matching path.
...
#>
function Open-QuickAccessExplorer  {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Folders
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA OPEN EXPLORER"
    if ($null -ne $selectedKey) {
        $folderPath = $hash[$selectedKey]
        explorer.exe $folderPath
    }
}

<#
.SYNOPSIS
Unregisters a key from QuickAccess. This applies to folders.
.DESCRIPTION
"Remove-QuickAccess" or "qax" unregisters a key from QuickAccess.
The directory itself will not be deleted.
You can specify a fuzzyKey to perform a partial match search 
and narrow down the target keys. If no fuzzyKey is specified, 
all registered items will be displayed in a list.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
This command applies to folder registrations.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full 
list of registered items. You can select the key to be 
unregistered by choosing its index.
...
# Using alias "qax".
PS C:\Users\[username]\Desktop> qax
--------------------------------
QA REMOVE KEY
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 0
Do you want to remove 'FolderA1'? (y/N): y
Removed: FolderA1
...
.EXAMPLE
fuzzyKey is specified. If "B" is specified as 
the fuzzyKey, it searches for keywords containing "B".
If a match is found, even if it's only one, it will 
be displayed in a list.
...
PS C:\Users\[username]\Desktop> qax B
--------------------------------
QA REMOVE KEY
--------------------------------
[0] FolderB
--------------------------------
Enter the index to select: 0
Do you want to remove 'FolderB'? (y/N): y
Removed: FolderB
...
#>
function Remove-QuickAccess {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Folders
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA REMOVE KEY" -listDisplay $true
    if ($null -eq $selectedKey) {
        return
    }
    $confirmation = Read-Host "Do you want to remove '$selectedKey'? (y/N)"
    if ($confirmation -eq 'y' -or $confirmation -eq 'Y') {
        $hash.Remove($selectedKey)
        Save-Hash-Folders($hash)
        Write-Host "Removed: $selectedKey"
    } else {
        Write-Host "Deletion cancelled."
    }
}
<#
.SYNOPSIS
Registers the current path in QuickAccess.
.DESCRIPTION
"Add-QuickAccess" or "qaa" registers the current path in QuickAccess.
The registered key defaults to the final directory name of
the current path. The current path cannot be registered in 
the following cases:
* The current path is already registered.
* The current path is already registered with a different key.
If the same key is registered but the path is different, an 
index will be appended to the end of the key, and it will be
registered as a new key.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
This command applies to folder registrations.
.EXAMPLE
...
# Using alias "qaa".
PS C:\Users\[username]\Desktop\FolderA3> qaa
Saved: test = C:\Users\[username]\Desktop\FolderA3
...
.EXAMPLE
If already registered.
...
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Key 'FolderA3' with the same path already exists.
...
.EXAMPLE
If the same path is already registered.
...
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Path 'C:\Users\[username]\Desktop\FolderA3' is already
registered with another key.
...
.EXAMPLE
If a key with the same name exists in the registered data, 
but you're trying to register a different path. An index will
be appended to the end of the key, and it will be registered
as a new key.
...
# Key "FolderA3" with path 'C:\Users\[username]\Desktop\FolderA3'
is already registered.
PS C:\Users\[username]\Documents\FolderA3> qaa
Added: FolderA3-1 = C:\Users\user1\Documants\FolderA3
...
#>
function Add-QuickAccess {  
    [CmdletBinding()]
    $hash = Get-Hash-Folders
    $currentPath = (Get-Location).Path
    $baseKey = Split-Path $currentPath -Leaf
     if (Is-Property $hash $baseKey $currentPath) {
        Write-Host "Warning: Key '$baseKey' with the same path already exists."
        return
    }
    if (-not (Is-Key $hash $baseKey) -and (Is-Path $hash $currentPath)) {
        Write-Host "Warning: Path '$currentPath' is already registered with another key."
        return
    }
    if ((Is-Key $hash $baseKey) -and -not (Is-Path $hash $currentPath)) {
        $key = Get-UniqueKey -hash $hash -key $baseKey
    } else {
        $key = $baseKey
    }
    $hash[$key] = $currentPath
    Save-Hash-Folders($hash) # marge property add new data
    Write-Host "Added: $key = $currentPath"
}
<#
.SYNOPSIS
Renames a registered key in QuickAccess.
.DESCRIPTION
You can rename a QuickAccess registered key using "Rename-QuickAccess" or "qar".
By specifying a fuzzyKey, you can perform a partial match search and
narrow down the target keys. If no fuzzyKey is specified, all
registered items will be displayed in a list.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
This command applies to folder registrations.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full list of 
registered items. Select an index and enter the new name for the key
to be renamed.
...
# Using alias "qar".
PS C:\Users\[username]\Desktop> 
--------------------------------
QA RENAME KEY
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
Enter new name for 'FolderB': FolderC
Renamed 'FolderB' to 'FolderC'
...
.EXAMPLE
If "A" is specified as the fuzzyKey, it searches for keywords
containing "A". If matches are found, a list will be displayed.
...
PS C:\Users\[username]\Desktop> qar A
--------------------------------
QA RENAME KEY
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
Enter new name for 'FolderA2': FolderA3
Renamed 'FolderA2' to 'FolderA3'
...
#>
function Rename-QuickAccess {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Folders
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA RENAME KEY" -listDisplay $true
    if ($null -eq $selectedKey) {
        return
    }
    $newName = Read-Host "Enter new name for '$selectedKey'"
    if ($newName -eq "" -or $null -eq $newName) {
        Write-Host "Rename cancelled."
        return
    }
    if ($hash.ContainsKey($newName)) {
        Write-Host "Error: The name '$newName' is already in use. Rename cancelled."
        return
    }
    $folderPath = $hash[$selectedKey]
    $hash.Remove($selectedKey)
    $hash[$newName] = $folderPath
    Save-Hash-Folders($hash)
    Write-Host "Renamed '$selectedKey' to '$newName'"
}
<#
.SYNOPSIS
Checks if the current path is registered in QuickAccess.
.DESCRIPTION
You can check if the current path is registered in QuickAccess
using "Show-QuickAccessStatus" or "qas". If it's registered, the corresponding
key will be displayed. If it's not registered, a message
indicating that will be shown.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.EXAMPLE
When the current path is already registered and the key is "B".
PS C:\Users\<UserName>\Documents\FolderB> Show-QuickAccessStatus
Key for current path: B
...
# Using alias "qas".
PS C:\Users\<UserName>\Documents\FolderB> qas
Key for current path: B
...
.EXAMPLE
When the current path is not registered.
...
PS C:\Users\<UserName>\Documents\FolderB> qas
Current path is not registered.
...
#>
function Show-QuickAccessStatus {
    [CmdletBinding()] 
    $hash = Get-Hash-Folders
    $currentPath = (Get-Location).Path
    $key = Get-KeyByPath -hash $hash -path $currentPath
    if ($null -ne $key) {
        Write-Host "Key for current path: $key"
    } else {
        Write-Host "Current path is not registered."
    }
}
<#
.SYNOPSIS
Displays the absolute path corresponding to a key registered in QuickAccess.
.DESCRIPTION
"Show-QuickAccessPath" or "qap" displays the absolute path corresponding to a QuickAccess
registration key. You can specify a fuzzyKey to perform a partial match
search and narrow down the target keys. If multiple keys match, a list of 
registered keys will be displayed. If only one key matches, its absolute
path will be displayed directly. If no fuzzyKey is specified, all registered
items are displayed in a list.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
"Show-QuickAccessPath" or "qap" is useful for verifying the absolute path associated with
a registered key.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full list of
registered items. By selecting an index, you can view the path corresponding
to the key.
...
# Using alias "qap".
PS C:\Users\[username]\Desktop> qap
--------------------------------
QA SHOW PATH
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 1
key : FolderA2
path: C:\Users\[username]\Desktop\FolderA2
...
.EXAMPLE
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If multiple matches are found, a list will be displayed.
...
PS C:\Users\[username]\Desktop> qap A
--------------------------------
QA SHOW PATH
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
key : FolderA2
path: C:\Users\[username]\Desktop\FolderA2
...
.EXAMPLE
fuzzyKey is specified. Only one match found.
...
PS C:\Users\[username]\Desktop> qap B
key : FolderB
path: C:\Users\[username]\Documents\FolderB
...
#>
function Show-QuickAccessPath {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Folders
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA SHOW PATH"
    if ($null -eq $selectedKey) {
        return
    }
	Write-Host key : $selectedKey
    Write-Host path: $hash.$selectedKey
}

<#
.SYNOPSIS
Lists all registered folder path keys in QuickAccess.
.DESCRIPTION
You can view all keys registered in QuickAccess using "Show-QuickAccessList" or "qal".
This command only lists folder paths; file paths are not included.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
"Show-QuickAccessList" or "qal" is a viewing command. It performs no actions.
.EXAMPLE
...
# Using alias "qal".
PS C:\Users\[username]\Desktop> qal
--------------------------------
QA ALL KEYS
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
...
#>
function Show-QuickAccessList {
    [CmdletBinding()]
    $hash = Get-Hash-Folders 
    Show-All-Keys -hash $hash
}

<#
.SYNOPSIS
Lists subfolders in the current path and navigates to one by
index selection.
.DESCRIPTION
This command lists subfolders directly under the current path and
allows you to navigate to one by selecting its index. It targets 
folders not yet registered in QuickAccess, serving as a command to
find target folders before registration.You can specify a fuzzyKey
to perform a partial match search and narrow down the target folders.
If multiple folders match, a list of target folders will be displayed.
If no fuzzyKey is specified, all subfolders directly under the
current path will be listed.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
"Enter-QuickAccessFolder" or "qaf" is used when searching for registration targets.
.EXAMPLE
No fuzzyKey specified. This example uses "qaf" to list subfolders
directly under the current path and select one by index. Once the
current directory changes, "qaa" is used to register it in QuickAccess.
...
PS C:\Users\[username]\Desktop> qaf
--------------------------------
QA FIND FOLDER
--------------------------------
[0] FolderD1
[1] FolderD2
[2] FolderE
--------------------------------
Enter the index to select: 2
PS C:\Users\[username]\Desktop\FolderE>qaa
...
.EXAMPLE
fuzzyKey is specified. Multiple matches. If "D" is specified as 
the fuzzyKey, it searches for keywords containing "D".
If matches are found, a list will be displayed.
...
PS C:\Users\[username]\Desktop> qaf
--------------------------------
QA FIND FOLDER
--------------------------------
[0] FolderD1
[1] FolderD2
--------------------------------
Enter the index to select: 1
PS C:\Users\[username]\Desktop\FolderD2>
...
#>
function Enter-QuickAccessFolder {
    [CmdletBinding()]
    param([string]$fuzzyKey = "")
    $folders = Get-ChildItem -Path (Get-Location) -Directory
    if (-not ([string]::IsNullOrWhiteSpace($fuzzyKey))) {
        $folders = $folders | Where-Object { $_.Name -match $fuzzyKey }
    }
    $hash = @{}
    if ($folders.Count -gt 0) {
        foreach ($folder in $folders) {
            $hash[$folder.Name] = $folder.FullName
        }
    } else {
        Write-Host "No matching folders found."
        return
    }
    $selectedFolder = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA FIND FOLDER" -listDisplay $true
    if ($null -eq $selectedFolder) {
        Write-Host "File selection cancelled."
        return
    }
    $path = $hash[$selectedFolder]
    Set-Location $path
}

<#
.SYNOPSIS
Outputs QuickAccess search results as a string object.
.DESCRIPTION
"Get-QuickAccessOutput" or "qao" outputs the search results obtained from 
QuickAccess as a string object. This is useful for piping the
path to other commands or assigning it to a variable. If you 
specify a fuzzyKey, it performs a partial keyword search and 
displays a filtered list of matching keys. If no fuzzyKey is 
specified, all registered items are listed for selection.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
System.String
This function outputs the absolute path of the selected folder
as a string object.
.NOTES
"Get-QuickAccessOutput" is useful when chaining commands via the pipeline.
.EXAMPLE
This example selects a registered path and outputs it to the console.
...
PS C:\Users\[username]\Desktop> qao
--------------------------------
QA OUTPUT PATH
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
C:\Users\[username]\Documents\FolderB
...
.EXAMPLE
This example selects a registered path and pipes it to Get-Item
to view its properties.
...
PS C:\Users\[username]\Desktop> qao B | Get-Item
Directory: C:\Users\[username]\Documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         2023/10/26 10:00          FolderB
...
#>
function Get-QuickAccessOutput {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Folders
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QA OUTPUT PATH"
    if ($null -ne $selectedKey) {
        $folderPath = $hash[$selectedKey]
        Write-Output $folderPath
    }
}




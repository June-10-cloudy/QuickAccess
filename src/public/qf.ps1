
<#
.SYNOPSIS
Opens a file registered in QuickAccess with its default application. 
This is similar to the "Favorites" feature in File Explorer.
.DESCRIPTION
"Open-QuickFileAccess" opens a file registered in QuickAccess with its default application.
If you specify a fuzzyKey, it performs a partial keyword match search and
displays a filtered list of corresponding keys. If no fuzzyKey is
specified, all registered items are displayed in a list. If the file
doesn't exist, an error message is output.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
This command applies to file registrations.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full list of
registered items and opens the selected index.
...
PS C:\Users\[username]\Desktop> Open-QuickFileAccess
--------------------------------
QF OPEN FILE
--------------------------------
[0] FileC1.jpg
[1] FileC2.png
[2] FileC3.jpg
--------------------------------
Enter the index to select: 1
Opening: C:\Users\[username]\Pictures\FileC2.png
...
.EXAMPLE
fuzzyKey is specified. Multiple matches. If "jp" is specified as 
the fuzzyKey, it searches for keywords containing "jp".
If multiple matches are found, a list is displayed.
...
PS C:\Users\[username]\Desktop> Open-QuickFileAccess jp
--------------------------------
QF OPEN FILE
--------------------------------
[0] FileC1.jpg
[1] FileC3.jpg
--------------------------------
Enter the index to select: 1
Opening: C:\Users\[username]\Pictures\FileC3.jpg
...
.EXAMPLE
fuzzyKey is specified. Only one match found.
If "C3" is specified as the fuzzyKey, only one match is found, 
so the application launches directly.
...
PS C:\Users\user1> Open-QuickFileAccess C3
Opening: C:\Users\[username]\Pictures\FileC3.jpg
...
#>
function Open-QuickFileAccess {
    param([string]$fuzzyKey)
    $hash = Get-Hash-Files
    if ($hash.Count -eq 1){
        $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QF OPEN FILE" -listDisplay $true
    }else{
        $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QF OPEN FILE"    
    }
    if ($null -eq $selectedKey) {
        return
    }
    $filePath = $hash[$selectedKey]
    if (-not (Test-Path $filePath)) {
        Write-Host "Error: The specified file '$filePath' was not found."
        return
    }
    Write-Host "Opening: $filePath"
    Start-Process $filePath
}
<#
.SYNOPSIS
Selects a file from the current directory and registers it in QuickAccess. 
This is similar to adding a file to "Favorites" in File Explorer.
.DESCRIPTION
"Add-QuickFileAccess" or "qfa" lists files directly under the current directory.
You can then select a file by index to register it in QuickAccess.
By specifying a fuzzyKey, you can perform a partial match search to narrow
down the target files. If no fuzzyKey is specified, all files directly
under the current directory will be listed. If the target file is already 
registered, you cannot register it again. If the same key is already
registered but for a different file path, an index will be appended to the
end of the key, and it will be registered as a new key.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
This command applies to file registrations.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full list of files
directly under the current directory. By selecting an index, the target
file will be registered in QuickAccess.
...
PS C:\Users\[username]\Desktop> qfa
--------------------------------
QF SAVE KEY
--------------------------------
[0] FileE1.txt
[1] FileE2.txt
[2] FileF.txt
--------------------------------
Enter the index to select: 2
Favorited: C:\Users\[username]\Desktop\FileF.txt
...
.EXAMPLE
fuzzyKey is specified. If "E" is specified as the fuzzyKey, 
it searches for keywords containing "E". If matches are found, 
a list will be displayed.
...
PS C:\Users\[username]\Desktop> qfa E
--------------------------------
QF SAVE KEY
--------------------------------
[0] FileE1.txt
[1] FileE2.txt
--------------------------------
Enter the index to select: 1
Favorited: C:\Users\[username]\Desktop\FileE2.txt
...
#>
function Add-QuickFileAccess {
    param([string]$fuzzyKey = "")
    $files = Get-ChildItem -Path (Get-Location) -File | Where-Object { $_.Extension -ne ".lnk" }
    if (-not ([string]::IsNullOrWhiteSpace($fuzzyKey))) {
        $files = $files | Where-Object { $_.Name -match $fuzzyKey }
    }
    $fileHashForSelection = @{}
    if ($files.Count -gt 0) {
        foreach ($file in $files) {
            $fileHashForSelection[$file.Name] = $file.FullName
        }
    } else {
        Write-Host "No matching files found."
        return
    }
    $selectedFileName = Get-MatchingKey -hash $fileHashForSelection -fuzzyKey $fuzzyKey -title "QF SAVE KEY" -listDisplay $true
    if ($null -eq $selectedFileName) {
        Write-Host "File selection cancelled."
        return
    }
    $path = $fileHashForSelection[$selectedFileName]
    $selectedFile = Get-Item $path
    $key = $selectedFile.Name
    $path = $selectedFIle.FullName
    $hash = Get-Hash-Files
    if (Is-Property $hash $key $path){
        Write-Host "This file is already registered."
        return
    }
    if ((Is-Key $hash $key) -and -not(Is-Path $hash $path)){
        $key = Get-UniqueKey -hash $hash -key $key
    }
    $hash[$key] = $path
    Save-Hash-Files($hash) 
    Write-Host "Favorited: $selectedFile"
}
<#
.SYNOPSIS
Unregisters a key from QuickAccess. This applies to files.
.DESCRIPTION
"Remove-QuickFileAccess" or "qfx" unregisters a key from QuickAccess.
The file itself will not be deleted.
You can specify a fuzzyKey to perform a partial match search
and narrow down the target keys. If no fuzzyKey is specified, 
all registered items will be displayed in a list.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
This command applies to file registrations.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full list 
of registered items. You can select the key to be unregistered
by choosing its index.
...
# Using alias "qfx".
PS C:\Users\[username]\Desktop> qfx
--------------------------------
QF REMOVE KEY
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
Enter the index to select: 0
Do you want to remove 'FileA1.txt'? (y/N): y
Removed: FileA1.txt
...
.EXAMPLE
fuzzyKey is specified. If "B" is specified as the fuzzyKey, 
it searches for keywords containing "B". If a match is found, 
it will be displayed in a list.
...
PS C:\Users\[username]\Desktop> qfx B
--------------------------------
QF REMOVE KEY
--------------------------------
[0] FileB.txt
--------------------------------
Enter the index to select: 0
Do you want to remove 'FileB.txt'? (y/N): y
Removed: FileB.txt
...
#>
function Remove-QuickFileAccess {
    param([string]$fuzzyKey)
    $hash = Get-Hash-Files
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QF REMOVE KEY" -listDisplay $true
    if ($null -eq $selectedKey) {
        return
    }
    $confirmation = Read-Host "Do you want to remove '$selectedKey'? (y/N)"
    if ($confirmation -eq 'y' -or $confirmation -eq 'Y') {
        $hash.Remove($selectedKey)
        Save-Hash-Files($hash)
        Write-Host "Removed: $selectedKey"
    } else {
        Write-Host "Deletion cancelled."
    }
}
<#
.SYNOPSIS
Displays the absolute path corresponding to a key registered in QuickAccess.
.DESCRIPTION
"Show-QuickFileAccessPath" or "qfp" displays the absolute path corresponding to a QuickAccess
registration key. You can specify a fuzzyKey to perform a partial match
search and narrow down the target keys. If multiple keys match, a list of 
registered keys will be displayed. If only one key matches, its absolute path
will be displayed directly. If no fuzzyKey is specified, all registered items
are displayed in a list.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
"Show-QuickFileAccessPath" or "qfp" is useful for verifying the absolute path associated with a 
registered key. This command applies to file registrations.
.EXAMPLE
When no fuzzyKey is specified, this example displays a full list of registered
items. By selecting an index, you can view the path corresponding to the key.
...
PS C:\Users\[username]> qfp
--------------------------------
QF SHOW PATH
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
Enter the index to select: 0
key : FIleA1.txt
path: C:\Users\[username]\Documents\FileA1.txt
...
.EXAMPLE
fuzzyKey is specified. Multiple matches. If "A" is specified as the fuzzyKey, 
it searches for keywords containing "A". If multiple matches are found, a 
list is displayed.
...
PS C:\Users\[username]\Desktop> qfp A
--------------------------------
QF SHOW PATH
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
--------------------------------
Enter the index to select: 1
key : FileA2.txt
path: C:\Users\[username]\Desktop\FileA2.txt
...
.EXAMPLE
fuzzyKey is specified. Only one match found.
...
PS C:\Users\[username]\Desktop> qfp B
key : FileB.txt
path: C:\Users\[username]\Documents\FileB.txt
...
#>
function Show-QuickFileAccessPath {
    param([string]$fuzzyKey)
    $hash = Get-Hash-Files
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QF SHOW PATH"
    if ($null -eq $selectedKey) {
        return
    }
	Write-Host key : $selectedKey
    Write-Host path: $hash.$selectedKey
}
<#
.SYNOPSIS
Lists all registered file path keys in QuickAccess.
.DESCRIPTION
You can view all keys registered in QuickAccess using "Show-QuickFileAccessList" or "qfl".
This command only lists file paths; folder paths are not included.
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
None. This function does not output objects to the pipeline.
.NOTES
"Show-QuickFileAccessList" or "qfl" is a viewing command. It performs no actions.
.EXAMPLE
...
# Using alias "qfl".
PS C:\Users\[username]\Desktop> qfl
--------------------------------
QA ALL KEYS
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
...
#>
function Show-QuickFileAccessList {
    $hash = Get-Hash-Files 
    Show-All-Keys -hash $hash
}

<#
.SYNOPSIS
Outputs QuickAccess search results as a string object.
.DESCRIPTION
"Get-QuickFileAccessOutput" or "qfo" outputs the search results obtained from QuickAccess 
as a string object. This is useful for piping to other commands or 
assigning to a variable. If you specify a fuzzyKey, it performs a partial 
keyword search and displays a filtered list of matching keys. If no 
fuzzyKey is specified, all registered items are displayed in a list for selection.

.EXAMPLE
This example selects a registered file path and outputs it to the console.
...
PS C:\Users\[username]\Desktop> Get-QuickFileAccessOutput
--------------------------------
QF OUTPUT PATH
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
Enter the index to select: 1
C:\Users\[username]\Documents\FileA2.txt
...
.EXAMPLE
This example pipes a file path obtained from QuickAccess to 
Get-Item to display its properties.
...
PS C:\Users\[username]\Desktop> Get-QuickFileAccessOutput B | Get-Item
    Directory: C:\Users\[username]\Documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         2023/10/26 10:00        1234 FileB.txt
...
.INPUTS
None. This function does not accept pipeline input.
.OUTPUTS
System.String
This function outputs the absolute path of the selected file as a string object.
.NOTES
"Get-QuickFileAccessOutput" is useful when chaining commands via the pipeline.
#>
function Get-QuickFileAccessOutput {
    [CmdletBinding()]
    param([string]$fuzzyKey)
    $hash = Get-Hash-Files
    $selectedKey = Get-MatchingKey -hash $hash -fuzzyKey $fuzzyKey -title "QF OUTPUT PATH"
    if ($null -ne $selectedKey) {
        $filePath = $hash[$selectedKey]
        Write-Output $filePath
    }
}
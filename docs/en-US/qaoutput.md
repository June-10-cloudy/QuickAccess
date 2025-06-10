---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qaoutput

## SYNOPSIS
Outputs QuickAccess search results as a string object.

## SYNTAX

```
qaoutput [[-fuzzyKey] <String>]
qao [[-fuzzyKey] <String>]
```

## DESCRIPTION
"qaoutput" or "qao" outputs the search results obtained from QuickAccess as a string object.
This is useful for piping the path to other commands or assigning it to a variable.
If you specify a fuzzyKey, it performs a partial keyword search and displays a filtered list of matching keys.
If no fuzzyKey is specified, all registered items are listed for selection.

## EXAMPLES

### Example 1
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

### Example 2
This example pipes a path obtained from QuickAccess to Get-Item to display its properties.
...
PS C:\Users\[username]\Desktop> qao B | Get-Item
Directory: C:\Users\[username]\Documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         2023/10/26 10:00          FolderB
...

## PARAMETERS

### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey is recommended.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```
## INPUTS
None. This function does not accept pipeline input.
## OUTPUTS
System.String
This function outputs the absolute path of the selected folder as a string object.
## NOTES
"qaoutput" is useful when chaining commands via the pipeline.
## RELATED LINKS
[QuickAccess Module Overview](Get-Help QuickAccess)
### Folder Operation Commands
* [qa (Navigate)](Get-Help qa)
* [qaadd (Register)](Get-Help qaadd)
* [qaremove (Unregister)](Get-Help qaremove)
* [qarename (Rename Key)](Get-Help qarename)
* [qapath (Show Registered Path)](Get-Help qapath)
* [qaexplorer (Open in Explorer)](Get-Help qaexplorer)
* [qafind (Search Subfolder)](Get-Help qafind)
* [qacheck (Check Registration)](Get-Help qacheck)
* [qaoutput (Output Path)](Get-Help qaoutput)
### File Operation Commands
* [qf (Open File)](Get-Help qf)
* [qfadd (Register)](Get-Help qfadd)
* [qfremove (Unregister)](Get-Help qfremove)
* [qfpath (Show Registered Path)](Get-Help qfpath)
* [qfoutput (Output Path)](Get-Help qfoutput)
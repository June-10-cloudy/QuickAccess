---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qafind

## SYNOPSIS
Lists subfolders in the current path and navigates to one by index selection.

## SYNTAX
```
qafind [[-fuzzyKey] <String>]
qaf [[-fuzzyKey] <String>]
```

## DESCRIPTION
This command lists subfolders directly under the current path and allows you to navigate to one by selecting its index.
It targets folders not yet registered in QuickAccess, serving as a command to find target folders before registration.
You can specify a fuzzyKey to perform a partial match search and narrow down the target folders.
If multiple folders match, a list of target folders will be displayed.
If no fuzzyKey is specified, all subfolders directly under the current path will be listed.

## EXAMPLES

### EXAMPLES1
No fuzzyKey specified.
This example uses "qaf" to list subfolders directly under the current path and select one by index.
Once the current directory changes, "qaa" is used to register it in QuickAccess.
```
# Using alias "qaf".
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
```

### EXAMPLES2
fuzzyKey is specified. Multiple matches.
If "D" is specified as the fuzzyKey, it searches for keywords containing "D".
If matches are found, a list will be displayed.
```
PS C:\Users\[username]\Desktop> qaf
--------------------------------
QA FIND FOLDER
--------------------------------
[0] FolderD1
[1] FolderD2
--------------------------------
Enter the index to select: 1
PS C:\Users\[username]\Desktop\FolderD2>
```
## PARAMETERS

### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey is recommended.

```yaml
Type: String
Parameter Sets: (All)
Aliases: qaf

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: (All)
Aliases: qfp

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```
## INPUTS
### None. This function does not accept pipeline input.
## OUTPUTS
### None. This function does not output objects to the pipeline.
## NOTES
"qafind" or "qaf" is used when searching for registration targets.
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
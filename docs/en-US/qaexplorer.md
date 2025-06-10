---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qaexplorer

## SYNOPSIS
Opens a path registered in QuickAccess with File Explorer.

## SYNTAX

```
qaexplorer [[-fuzzyKey] <String>]
qae [[-fuzzyKey] <String>]
```

## DESCRIPTION
You can open a path registered in QuickAccess with File Explorer using "qaexplorer" or "qae".
If you specify a fuzzyKey, it performs a partial keyword match search and displays a filtered list of corresponding keys.
If no fuzzyKey is specified, all registered items are displayed in a list.

## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items and opens the selected index.
```
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
```

### EXAMPLES2 
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If multiple matches are found, a list is displayed.

```
PS C:\Users\[username]\Desktop> qa A
--------------------------------
QA OPEN EXPLORER
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
# File Explorer opens to the selected path.
```
### EXAMPLES3
fuzzyKey is specified. Only one match found. In this case, it opens that path in File Explorer.
```
PS C:\Users\[username]\Desktop> qa B
# 該当したパスでファイルエクスプローラーが開く。
```

## PARAMETERS

### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey is recommended.

```yaml
Type: String
Parameter Sets: (All)
Aliases: qae

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
"qaexplorer" or "qae" uses explorer.exe to open folders.
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
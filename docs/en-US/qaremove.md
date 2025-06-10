---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qaremove

## SYNOPSIS
Unregisters a key from QuickAccess. This applies to folders.

## SYNTAX
```
qaremove [[-fuzzyKey] <String>]
qax [[-fuzzyKey] <String>]
```

## DESCRIPTION
"qaremove" or "qax" unregisters a key from QuickAccess.
The directory itself will not be deleted.
You can specify a fuzzyKey to perform a partial match search and narrow down the target keys.
If no fuzzyKey is specified, all registered items will be displayed in a list.

## EXAMPLES

### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items.
You can select the key to be unregistered by choosing its index.

```
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
```
### EXAMPLES2
fuzzyKey is specified.
If "B" is specified as the fuzzyKey, it searches for keywords containing "B".
If a match is found, even if it's only one, it will be displayed in a list.
```
PS C:\Users\[username]\Desktop> qax B
--------------------------------
QA REMOVE KEY
--------------------------------
[0] FolderB
--------------------------------
Enter the index to select: 0
Do you want to remove 'FolderB'? (y/N): y
Removed: FolderB
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey will make it easier to find the desired entry from the list.

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
### None. This function does not accept pipeline input.
## OUTPUTS
### None. This function does not output objects to the pipeline.
## NOTES

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
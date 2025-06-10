---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qfpath

## SYNOPSIS
Displays the absolute path corresponding to a key registered in QuickAccess.

## SYNTAX

```
qfpath [[-fuzzyKey] <String>]
qfp [[-fuzzyKey] <String>]
```

## DESCRIPTION
"qfpath" or "qfp" displays the absolute path corresponding to a QuickAccess registration key.
You can specify a fuzzyKey to perform a partial match search and narrow down the target keys.
If multiple keys match, a list of registered keys will be displayed. If only one key matches, its absolute path will be displayed directly.
If no fuzzyKey is specified, all registered items are displayed in a list.

## EXAMPLES

### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items.
By selecting an index, you can view the path corresponding to the key.
```
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
```
### EXAMPLES2
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If multiple matches are found, a list is displayed.
```
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
```
### EXAMPLES3
fuzzyKey is specified. Only one match found.
```
PS C:\Users\[username]\Desktop> qfp B
key : FileB.txt
path: C:\Users\[username]\Documents\FileB.txt
```
## PARAMETERS

### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using a fuzzyKey is recommended.

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
### None. This function changes the current working directory but does not output any objects to the pipeline.
## NOTES
### None. This function does not output objects to the pipeline.
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

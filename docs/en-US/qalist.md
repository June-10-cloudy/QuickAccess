---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qa

## SYNOPSIS
Lists all registered folder path keys in QuickAccess.

## SYNTAX
```
qalist
qal
```
## DESCRIPTION
You can view all keys registered in QuickAccess using "qalist" or "qal".
This command only lists folder paths; file paths are not included.

## EXAMPLES

### EXAMPLES1
```
# Using alias "qal".
PS C:\Users\[username]\Desktop> qal
--------------------------------
QA ALL KEYS
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qal

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
"qalist" or "qal" is a viewing command. It performs no actions.
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
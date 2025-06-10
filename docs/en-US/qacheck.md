---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qacheck

## SYNOPSIS
Checks if the current path is registered in QuickAccess.

## SYNTAX

```
qacheck
qac
```

## DESCRIPTION
You can check if the current path is registered in QuickAccess using "qacheck" or "qac".
If it's registered, the corresponding key will be displayed.
If it's not registered, a message indicating that will be shown.

## EXAMPLES

### EXAMPLES1
When the current path is already registered and the key is "B". 
```
PS C:\Users\<UserName>\Documents\FolderB> qacheck
Key for current path: B

# Using alias "qac".
PS C:\Users\<UserName>\Documents\FolderB> qac
Key for current path: B

```
### EXAMPLES2
When the current path is not registered.
```
PS C:\Users\<UserName>\Documents\FolderB> qac
Current path is not registered.
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qac

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
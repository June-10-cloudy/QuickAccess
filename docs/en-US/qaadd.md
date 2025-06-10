---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qaadd

## SYNOPSIS
Registers the current path in QuickAccess.

## SYNTAX

```
qaadd
qaa
```

## DESCRIPTION
"qaadd" or "qaa" registers the current path in QuickAccess.
The registered key defaults to the final directory name of the current path.
The current path cannot be registered in the following cases:
* The current path is already registered.
* The current path is already registered with a different key.
If the same key is registered but the path is different, an index will be appended to the end of the key, and it will be registered as a new key.

## EXAMPLES

### EXAMPLES1
```
# Using alias "qaa".
PS C:\Users\[username]\Desktop\FolderA3> qaa
Saved: test = C:\Users\[username]\Desktop\FolderA3
```
### EXAMPLES2
If already registered.
```
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Key 'FolderA3' with the same path already exists.
```
### EXAMPLES 3
If the same path is already registered.
```
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Path 'C:\Users\[username]\Desktop\FolderA3' is already registered with another key.
```
### EXAMPLES 4
If a key with the same name exists in the registered data, but you're trying to register a different path.
An index will be appended to the end of the key, and it will be registered as a new key.
```
# Key "FolderA3" with path 'C:\Users\[username]\Desktop\FolderA3' is already registered.
PS C:\Users\[username]\Documents\FolderA3> qaa
Saved: FolderA3-1 = C:\Users\user1\Documants\FolderA3
```
## PARAMETERS

```yaml
Type: String
Parameter Sets: (All)
Aliases: qaa

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
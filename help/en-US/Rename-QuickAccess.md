---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Rename-QuickAccess
## SYNOPSIS
Renames a registered key in QuickAccess.
## SYNTAX
```
Rename-QuickAccess [[-fuzzyKey] <String>]
qar [[-fuzzyKey] <String>]
```
## DESCRIPTION
You can rename a QuickAccess registered key using "Rename-QuickAccess" or "qar".
By specifying a fuzzyKey, you can perform a partial match search and narrow down the target keys.
If no fuzzyKey is specified, all registered items will be displayed in a list.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items.
Select an index and enter the new name for the key to be renamed.
```
# Using alias "qar".
PS C:\Users\[username]\Desktop> qar
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
```
### EXAMPLES2
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If matches are found, a list will be displayed.
```
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
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using a fuzzyKey is recommended.
```yaml
Type: String
Parameter Sets: (All)
Aliases: qar
Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```
## INPUTS
### None. 
This function does not accept pipeline input.
## OUTPUTS
### None. 
This function does not output objects to the pipeline.
## NOTES
## RELATED LINKS
[QuickAccess Help Docments](https://github.com/June-10-cloudy/QuickAccess-Help)

---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess-Help/blob/main/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Show-QuickAccessPath
## SYNOPSIS
Displays the absolute path corresponding to a key registered in QuickAccess.
## SYNTAX
```
Show-QuickAccessPath [[-fuzzyKey] <String>]
qap [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Show-QuickAccessPath" or "qap" displays the absolute path corresponding to a QuickAccess registration key.
You can specify a fuzzyKey to perform a partial match search and narrow down the target keys.
If multiple keys match, a list of registered keys will be displayed. If only one key matches, its absolute path will be displayed directly.
If no fuzzyKey is specified, all registered items are displayed in a list.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items.
By selecting an index, you can view the path corresponding to the key.
```
# Using alias "qap".
PS C:\Users\[username]\Desktop> qap
--------------------------------
QA SHOW PATH
--------------------------------
[0] FolderA1
[1] FolderA2 
[2] FolderB
--------------------------------
Enter the index to select: 1
key : FolderA2
path: C:\Users\[username]\Desktop\FolderA2
```
### EXAMPLES2
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If multiple matches are found, a list will be displayed.
```
PS C:\Users\[username]\Desktop> qap A
--------------------------------
QA SHOW PATH
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
key : FolderA2
path: C:\Users\[username]\Desktop\FolderA2
```
### EXAMPLES3
fuzzyKey is specified. Only one match found.
```
PS C:\Users\[username]\Desktop> qap B
key : FolderB
path: C:\Users\[username]\Documents\FolderB
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey is recommended.
```yaml
Type: String
Parameter Sets: (All)
Aliases: qap
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
"Show-QuickAccessPath" or "qap" is useful for verifying the absolute path associated with a registered key.
## RELATED LINKS
[QuickAccess Help Docments](https://github.com/June-10-cloudy/QuickAccess-Help)

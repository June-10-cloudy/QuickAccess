---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Remove-QuickAccess
## SYNOPSIS
Unregisters a key from QuickAccess. This applies to folders.
## SYNTAX
```
Remove-QuickAccess [[-fuzzyKey] <String>]
qax [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Remove-QuickAccess" or "qax" unregisters a key from QuickAccess.
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
### None. 
This function does not accept pipeline input.
## OUTPUTS
### None. 
This function does not output objects to the pipeline.
## NOTES
## RELATED LINKS
[QuickAccess Help Docments](https://github.com/June-10-cloudy/QuickAccess-Help)

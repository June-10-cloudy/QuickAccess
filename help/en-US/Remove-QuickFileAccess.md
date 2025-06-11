---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Remove-QuickAccess
## SYNOPSIS
Unregisters a key from QuickAccess. This applies to files.
## SYNTAX
```
Remove-QuickFileAccess [[-fuzzyKey] <String>]
qfx [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Remove-QuickFileAccess" or "qfx" unregisters a key from QuickAccess.
The file itself will not be deleted.
You can specify a fuzzyKey to perform a partial match search and narrow down the target keys.
If no fuzzyKey is specified, all registered items will be displayed in a list.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items.
You can select the key to be unregistered by choosing its index.
```
# Using alias "qfx".
PS C:\Users\[username]\Desktop> qfx
--------------------------------
QF REMOVE KEY
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
Enter the index to select: 0
Do you want to remove 'FileA1.txt'? (y/N): y
Removed: FileA1.txt
```
### EXAMPLES2
fuzzyKey is specified.
If "B" is specified as the fuzzyKey, it searches for keywords containing "B".
If a match is found, it will be displayed in a list.
```
PS C:\Users\[username]\Desktop> qfx B
--------------------------------
QF REMOVE KEY
--------------------------------
[0] FileB.txt
--------------------------------
Enter the index to select: 0
Do you want to remove 'FileB.txt'? (y/N): y
Removed: FileB.txt
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using a fuzzyKey is recommended.
```yaml
Type: String
Parameter Sets: (All)
Aliases: qfx
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

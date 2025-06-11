---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml 
schema: 2.0.0
---
# Show-QuickFileAccessPath
## SYNOPSIS
Displays the absolute path corresponding to a key registered in QuickAccess.
## SYNTAX
```
Show-QuickFileAccessPath [[-fuzzyKey] <String>]
qfp [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Show-QuickFileAccessPath" or "qfp" displays the absolute path corresponding to a QuickAccess registration key.
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
### None. 
This function does not accept pipeline input.
## OUTPUTS
### None.
## NOTES
This function does not output objects to the pipeline.
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README.md)


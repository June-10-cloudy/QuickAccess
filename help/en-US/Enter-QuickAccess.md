---
schema: 2.0.0
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml 
---
# Enter-QuickAccess
## SYNOPSIS
Navigates to a path registered in QuickAccess.
## SYNTAX
```
Enter-QuickAccess [[-fuzzyKey] <String>]
```
## DESCRIPTION
The "Enter-QuickAccess" command lets you quickly move to a path registered in QuickAccess.
If you specify a fuzzyKey, it performs a partial keyword match and displays
a filtered list of matching keys. If no fuzzyKey is specified, all registered
paths are listed for selection.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered
items and moves to the selected index.
```PowerShell
PS C:\Users\username\Desktop> qa
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
PS C:\Users\username\Documents\FolderB> 
```
### EXAMPLES2 
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If multiple matches are found, a list is displayed.
```PowerShell
PS C:\Users\username\Desktop> qa A
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
PS C:\Users\username\Desktop\FolderA2> 
```
### EXAMPLES3
fuzzyKey is specified. Only one match found. In this case, it moves directly to that path.
```PowerShell
PS C:\Users\username\Desktop> qa B
PS C:\Users\username\Documents\FolderB> 
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey is recommended.
```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values:
Applicable:
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
## RELATED LINKS
[QuickAccess Help Docments](https://github.com/June-10-cloudy/QuickAccess-Help)
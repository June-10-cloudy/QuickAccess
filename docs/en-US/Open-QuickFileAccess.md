---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Open-QuickFileAccess
## SYNOPSIS
Opens a file registered in QuickAccess with its default application. This is similar to the "Favorites" feature in File Explorer.
## SYNTAX
```
Open-QuickFileAccess [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Open-QuickFileAccess" opens a file registered in QuickAccess with its default application.
If you specify a fuzzyKey, it performs a partial keyword match search and displays a filtered list of corresponding keys.
If no fuzzyKey is specified, all registered items are displayed in a list.
If the file doesn't exist, an error message is output.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items and opens the selected index.
```
PS C:\Users\[username]\Desktop> qf
--------------------------------
QF OPEN FILE
--------------------------------
[0] FileC1.jpg
[1] FileC2.png
[2] FileC3.jpg
--------------------------------
Enter the index to select: 1
Opening: C:\Users\[username]\Pictures\FileC2.png
```
### EXAMPLES 2
fuzzyKey is specified. Multiple matches.
If "jp" is specified as the fuzzyKey, it searches for keywords containing "jp".
If multiple matches are found, a list is displayed.
```
PS C:\Users\[username]\Desktop> qf jp
--------------------------------
QF OPEN FILE
--------------------------------
[0] FileC1.jpg
[1] FileC3.jpg
--------------------------------
Enter the index to select: 1
Opening: C:\Users\[username]\Pictures\FileC3.jpg
```
### EXAMPLES3
fuzzyKey is specified. Only one match found.
If "C3" is specified as the fuzzyKey, only one match is found, so the application launches directly.
```
PS C:\Users\user1> qf C3
Opening: C:\Users\[username]\Pictures\FileC3.jpg
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


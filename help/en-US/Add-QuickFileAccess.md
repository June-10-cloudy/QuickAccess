---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Add-QuickFileAccess
## SYNOPSIS
Selects a file from the current directory and registers it in QuickAccess. This is similar to adding a file to "Favorites" in File Explorer.
## SYNTAX
```
Add-QuickFileAccess [[-fuzzyKey] <String>]
qfa [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Add-QuickFileAccess" or "qfa" lists files directly under the current directory.
You can then select a file by index to register it in QuickAccess.
By specifying a fuzzyKey, you can perform a partial match search to narrow down the target files.
If no fuzzyKey is specified, all files directly under the current directory will be listed.
If the target file is already registered, you cannot register it again.
If the same key is already registered but for a different file path, an index will be appended to the end of the key, and it will be registered as a new key.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of files directly under the current directory.
By selecting an index, the target file will be registered in QuickAccess.
```
PS C:\Users\[username]\Desktop> qfa
--------------------------------
QF SAVE KEY
--------------------------------
[0] FileE1.txt
[1] FileE2.txt
[2] FileF.txt
--------------------------------
Enter the index to select: 2
Favorited: C:\Users\[username]\Desktop\FileF.txt
```
### EXAMPLES2
fuzzyKey is specified.
If "E" is specified as the fuzzyKey, it searches for keywords containing "E".
If matches are found, a list will be displayed.
```
PS C:\Users\[username]\Desktop> qfa E
--------------------------------
QF SAVE KEY
--------------------------------
[0] FileE1.txt
[1] FileE2.txt
--------------------------------
Enter the index to select: 1
Favorited: C:\Users\[username]\Desktop\FileE2.txt
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using a fuzzyKey is recommended.
```yaml
Type: String
Parameter Sets: (All)
Aliases: qfa
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


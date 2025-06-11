---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Open-QuickAccessExplorer 
## SYNOPSIS
Opens a path registered in QuickAccess with File Explorer.
## SYNTAX
```
Open-QuickAccessExplorer  [[-fuzzyKey] <String>]
qae [[-fuzzyKey] <String>]
```
## DESCRIPTION
You can open a path registered in QuickAccess with File Explorer using "Open-QuickAccessExplorer " or "qae".
If you specify a fuzzyKey, it performs a partial keyword match search and displays a filtered list of corresponding keys.
If no fuzzyKey is specified, all registered items are displayed in a list.
## EXAMPLES
### EXAMPLES1
When no fuzzyKey is specified, this example displays a full list of registered items and opens the selected index.
```
PS C:\Users\[username]\Desktop> qae
--------------------------------
QA OPEN EXPLORER
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
# File Explorer opens to the selected path.
```
### EXAMPLES2 
fuzzyKey is specified. Multiple matches.
If "A" is specified as the fuzzyKey, it searches for keywords containing "A".
If multiple matches are found, a list is displayed.
```
PS C:\Users\[username]\Desktop> qae A
--------------------------------
QA OPEN EXPLORER
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
# File Explorer opens to the selected path.
```
### EXAMPLES3
fuzzyKey is specified. Only one match found. In this case, it opens that path in File Explorer.
```
PS C:\Users\[username]\Desktop> qae B
# 該当したパスでファイルエクスプローラーが開く。
```
## PARAMETERS
### -fuzzyKey
A keyword for partial match searching.
If omitted, all registered data will be listed.
If there are many registered items, using fuzzyKey is recommended.
```yaml
Type: String
Parameter Sets: (All)
Aliases: qae
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
"Open-QuickAccessExplorer " or "qae" uses explorer.exe to open folders.
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README.md)

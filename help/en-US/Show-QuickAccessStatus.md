---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Show-QuickAccessStatus
## SYNOPSIS
Checks if the current path is registered in QuickAccess.
## SYNTAX
```
Show-QuickAccessStatus
qas
```
## DESCRIPTION
You can check if the current path is registered in QuickAccess using "Show-QuickAccessStatus" or "qas".
If it's registered, the corresponding key will be displayed.
If it's not registered, a message indicating that will be shown.
## EXAMPLES
### EXAMPLES1
When the current path is already registered and the key is "B". 
```
PS C:\Users\<UserName>\Documents\FolderB> Show-QuickAccessStatus
Key for current path: B
# Using alias "qas".
PS C:\Users\<UserName>\Documents\FolderB> qas
Key for current path: B
```
### EXAMPLES2
When the current path is not registered.
```
PS C:\Users\<UserName>\Documents\FolderB> qas
Current path is not registered.
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qas
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

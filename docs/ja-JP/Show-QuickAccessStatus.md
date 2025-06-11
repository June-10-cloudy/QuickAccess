---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Show-QuickAccessStatus
## SYNOPSIS
カレントパスが QuickAccessに登録されているかを確認します。
## SYNTAX
```
Show-QuickAccessStatus
qas
```
## DESCRIPTION
"Show-QuickAccessStatus" または "qas" でカレントパスがQuickAccessに登録されているか確認できます。
登録されている場合、対応するキーが表示されます。
登録されていない場合は、その旨がメッセージで示されます。
## EXAMPLES
### EXAMPLES1
カレントパスが既に登録されており、キーが"B"だった場合。 
```
PS C:\Users\<UserName>\Documents\FolderB> Show-QuickAccessStatus
Key for current path: B
#エイリアス"qas"を使用。
PS C:\Users\<UserName>\Documents\FolderB> qas
Key for current path: B
```
### EXAMPLES2
カレントパスが未登録だった場合。 
```
#エイリアス"qas"を使用。
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
### なし。
この関数はパイプライン入力を受け付けません。
## OUTPUTS
### なし。
この関数はパイプラインにオブジェクトを出力しません。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)
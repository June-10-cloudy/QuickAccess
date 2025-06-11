---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# qa
## SYNOPSIS
QuickAccessに登録されたフォルダパス全てのキーをリスト表示します。
## SYNTAX
```
Show-QuickAccessList
qal
```
## DESCRIPTION
"Show-QuickAccessList" または、"qal" で、QuickAccessに登録されている全てのキーを確認することが出来ます。
対象はフォルダパスのみで、ファイルパス含まれません。
## EXAMPLES
### EXAMPLES1
```
# エイリアス"qal"を使用。
PS C:\Users\[username]\Desktop> qal
--------------------------------
QA ALL KEYS
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qal
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
## NOTES
"Show-QuickAccessList" または "qal"は、閲覧用コマンドです。アクションはありません。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)

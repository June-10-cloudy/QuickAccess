---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Enter-QuickAccess
## SYNOPSIS
QuickAccessに登録されたファイルパス全てのキーをリスト表示します。
## SYNTAX
```
Show-QuickFileAccessList
qfl
```
## DESCRIPTION
"Show-QuickFileAccessList" または、"qfl" で、QuickAccessに登録されている全てのキーを確認することが出来ます。
対象はファイルパスのみで、フォルダパス含まれません。
## EXAMPLES
### EXAMPLES1
```
# エイリアス"qfl"を使用。
PS C:\Users\[username]\Desktop> qfl
--------------------------------
QA ALL KEYS
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qfl
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
"Show-QuickFileAccessList" または "qfl"は、閲覧用コマンドです。アクションはありません。
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README-ja-JP.md)

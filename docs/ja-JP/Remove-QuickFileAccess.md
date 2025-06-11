---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Remove-QuickAccess
## SYNOPSIS
QuickAccess に登録されたキーを解除します。ファイル対象。
## SYNTAX
```
Remove-QuickFileAccess [[-fuzzyKey] <String>]
qfx [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Remove-QuickFileAccess" または "qfx" は、QuickAccessに登録されたキーを解除します。
ファイルそのものが削除されることはありません。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示します。
インデックスを選択すると、解除対象となるキーを選択できます。
```
#エイリアス"qfx"を使用。
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
fuzzyKey 指定あり。
fuzzyKeyに"B"を指定した場合、"B"含むキーワード検索をします。
該当があった場合、リスト表示されます。
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
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
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
### なし。
この関数はパイプライン入力を受け付けません。
## OUTPUTS
### なし。
この関数はパイプラインにオブジェクトを出力しません。
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README-ja-JP.md)

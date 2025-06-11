---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Show-QuickFileAccessPath
## SYNOPSIS
QuickAccess に登録されたキーに対応する絶対パスを表示します。
## SYNTAX
```
Show-QuickFileAccessPath [[-fuzzyKey] <String>]
qfp [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Show-QuickFileAccessPath" または "qfp" は、QuickAccess登録キーに対応する絶対パスを表示します。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
複数が該当する場合、登録キーリストが表示されます。該当が一つの場合、絶対パスを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示します。
インデックスを選択すると、キーに対応するパスを確認できます。
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
fuzzyKey 指定あり。複数該当。
fuzzyKeyに"A"を指定した場合、"A"含むキーワード検索をします。
該当が複数あった場合、リストが表示されます。
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
fuzzyKey 指定あり。該当するものが一つだけ見つかった場合。
```
PS C:\Users\[username]\Desktop> qfp B
key : FileB.txt
path: C:\Users\[username]\Documents\FileB.txt
```
## PARAMETERS
### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
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
### なし。
この関数はパイプライン入力を受け付けません。
## OUTPUTS
### なし。
この関数はパイプラインにオブジェクトを出力しません。
## NOTES
"Show-QuickFileAccessPath" または "qfp" は、登録キーに紐づいた絶対パスを確認するために役立ちます。
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README-ja-JP.md)
---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Add-QuickFileAccess
## SYNOPSIS
カレントディレクトリからファイルを選択し、QuickAccessに登録します。
エクスプローラーのお気に入り登録と同じ機能です。
## SYNTAX
```
Add-QuickFileAccess [[-fuzzyKey] <String>]
qfa [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Add-QuickFileAccess" または "qfa" で、カレントディレクトリの直下にあるファイルをリスト表示します。
インデックス選択でファイルをQuickAccessに登録します。
fuzzyKeyを指定することで部分一致検索を行い、対象ファイルを絞り込むことができます。
fuzzyKeyが指定されない場合、カレントディレクトリ直下の全ファイルがリスト表示されます。
対象ファイルが既に登録されている場合、登録できません。
同一キーが登録されているが、ファイルパスが違っている場合、キーの末尾にインデックスを付加し登録されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、カレントディレクトリ直下のファイル全てをリスト表示します。
インデックスを選択すると、対象ファイルがQuickAccessに登録されます。
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
fuzzyKey 指定あり。
fuzzyKeyに"E"を指定した場合、"E"含むキーワード検索をします。
該当があった場合、リスト表示されます。
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
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
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
### なし。
この関数はパイプライン入力を受け付けません。
## OUTPUTS
### なし。
この関数はパイプラインにオブジェクトを出力しません。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)

---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Open-QuickAccessExplorer 
## SYNOPSIS
QuickAccess に登録されたパスをファイルエクスプローラーで開きます。
## SYNTAX
```
Open-QuickAccessExplorer  [[-fuzzyKey] <String>]
qae [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Open-QuickAccessExplorer " または "qae" で、QuickAccessに登録されているパスをファイルエクスプローラーで開きます。
fuzzyKeyを指定すると、キーワード部分一致検索を行い、絞り込まれた該当するキーリストを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示し、インデックス選択で開きます。
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
# 選択されたパスでファイルエクスプローラーが開く。
```
### EXAMPLES2 
fuzzyKey 指定あり。複数該当。
fuzzyKeyに"A"を指定した場合、"A"含むキーワード検索をします。
該当が複数あった場合、リストが表示されます。
```
PS C:\Users\[username]\Desktop> qa A
--------------------------------
QA OPEN EXPLORER
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
# 選択されたパスでファイルエクスプローラーが開く。
```
### EXAMPLES3
fuzzyKey 指定あり。該当するものが一つだけ見つかった場合、そのパスをファイルエクスプローラーで開きます。
```
PS C:\Users\[username]\Desktop> qa B
# 該当したパスでファイルエクスプローラーが開く。
```
## PARAMETERS
### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
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
### なし。この関数はパイプライン入力を受け付けません。
## OUTPUTS
### なし。この関数はパイプラインにオブジェクトを出力しません。
## NOTES
"Open-QuickAccessExplorer " または "qae"はフォルダを開くために explorer.exe を使用します。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)
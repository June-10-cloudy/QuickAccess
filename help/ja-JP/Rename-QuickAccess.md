---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Rename-QuickAccess
## SYNOPSIS
QuickAccessに登録されたキーのリネームを行います。
## SYNTAX
```
Rename-QuickAccess [[-fuzzyKey] <String>]
qar [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Rename-QuickAccess" または "qar" で、QuickAccessの登録キーのリネームが出来ます。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示します。
インデックスを選択し、リネーム対象のキーの新しい名前を入力します。
```
# エイリアス"qar"を使用。
PS C:\Users\[username]\Desktop> qar
--------------------------------
QA RENAME KEY
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
Enter new name for 'FolderB': FolderC
Renamed 'FolderB' to 'FolderC'
```
### EXAMPLES2
fuzzyKeyに"A"を指定した場合、"A"含むキーワード検索をします。
該当があった場合、リストが表示されます。
```
PS C:\Users\[username]\Desktop> qar A
--------------------------------
QA RENAME KEY
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
Enter new name for 'FolderA2': FolderA3
Renamed 'FolderA2' to 'FolderA3'
```
## PARAMETERS
### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
```yaml
Type: String
Parameter Sets: (All)
Aliases: qar
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
---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Remove-QuickAccess
## SYNOPSIS
QuickAccess に登録されたキーを解除します。フォルダ対象。
## SYNTAX
```
Remove-QuickAccess [[-fuzzyKey] <String>]
qax [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Remove-QuickAccess" または "qax" は、QuickAccessに登録されたキーを解除します。
ディレクトリそのものが削除されることはありません。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示します。
インデックスを選択すると、解除対象となるキーを選択できます。
```
#エイリアス"qax"を使用。
PS C:\Users\[username]\Desktop> qax
--------------------------------
QA REMOVE KEY
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 0
Do you want to remove 'FolderA1'? (y/N): y
Removed: FolderA1
```
### EXAMPLES2
fuzzyKey 指定あり。
fuzzyKeyに"B"を指定した場合、"B"含むキーワード検索をします。
該当があった場合、一つだけでもリスト表示されます。
```
PS C:\Users\[username]\Desktop> qax B
--------------------------------
QA REMOVE KEY
--------------------------------
[0] FolderB
--------------------------------
Enter the index to select: 0
Do you want to remove 'FolderB'? (y/N): y
Removed: FolderB
```
## PARAMETERS
### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyを使用する方がリストから見つけやすいでしょう。
```yaml
Type: String
Parameter Sets: (All)
Aliases:
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
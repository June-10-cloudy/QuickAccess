---
external help file: QuickAccess-help.xml
https://github.com/June-10-cloudy/QuickAccess/blob/master/help/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Enter-QuickAccessFolder
## SYNOPSIS
カレントパス内のサブフォルダをリスト表示し、インデックス選択で移動します。
## SYNTAX
```
Enter-QuickAccessFolder [[-fuzzyKey] <String>]
qaf [[-fuzzyKey] <String>]
```
## DESCRIPTION
カレントパスの直下にあるサブフォルダをリスト表示し、インデックス選択で移動します。
QuickAccessに登録されていないフォルダも対象。登録前の対象フォルダーを探すためのコマンド。
fuzzyKeyを指定することで部分一致検索を行い、対象フォルダを絞り込むことができます。
複数が該当する場合、対象フォルダのリストが表示されます。
fuzzyKeyが指定されない場合、カレント直下の全サブフォルダがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKeyの指定無し。
"qaf"でカレント直下のサブフォルダをリストアップし、インデックスで選択。
カレントが切り替わったら"qaa"でQuickAccessに登録。
```
#エイリアス"qaf"を使用。
PS C:\Users\[username]\Desktop> qaf
--------------------------------
QA FIND FOLDER
--------------------------------
[0] FolderD1
[1] FolderD2
[2] FolderE
--------------------------------
Enter the index to select: 2
PS C:\Users\[username]\Desktop\FolderE>qaa
```
### EXAMPLES2
fuzzyKey 指定あり。複数該当。
fuzzyKeyに"D"を指定した場合、"D"含むキーワード検索をします。
該当があった場合、リスト表示されます。
```
PS C:\Users\[username]\Desktop> qaf
--------------------------------
QA FIND FOLDER
--------------------------------
[0] FolderD1
[1] FolderD2
--------------------------------
Enter the index to select: 1
PS C:\Users\[username]\Desktop\FolderD2>
```
## PARAMETERS
### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
```yaml
Type: String
Parameter Sets: (All)
Aliases: qaf
Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```
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
"Enter-QuickAccessFolder" または "qaf" は、登録対象を検索する時に使用します。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)
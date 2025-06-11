---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess-Help/blob/main/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Open-QuickFileAccess
## SYNOPSIS
QuickAccess に登録されたファイルを既定のアプリケーションで開きます。
ファイルエクスプローラーの"お気に入り"と同じ機能です。
## SYNTAX
```
Open-QuickFileAccess [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Open-QuickFileAccess" は、QuickAccessに登録されたファイルを既定アプリケーションで開きます。
fuzzyKeyを指定すると、キーワード部分一致検索を行い、絞り込まれた該当するキーリストを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
ファイルが存在しない場合、エラーメッセージを出力します。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示し、インデックス選択で移動します。
```
PS C:\Users\[username]\Desktop> qf
--------------------------------
QF OPEN FILE
--------------------------------
[0] FileC1.jpg
[1] FileC2.png
[2] FileC3.jpg
--------------------------------
Enter the index to select: 1
Opening: C:\Users\[username]\Pictures\FileC2.png
```
### EXAMPLES 2
fuzzyKey 指定あり。複数該当。
fuzzyKeyに"jp"を指定した場合、"jp"含むキーワード検索をします。
該当が複数あった場合、リストが表示されます。
```
PS C:\Users\[username]\Desktop> qf jp
--------------------------------
QF OPEN FILE
--------------------------------
[0] FileC1.jpg
[1] FileC3.jpg
--------------------------------
Enter the index to select: 1
Opening: C:\Users\[username]\Pictures\FileC3.jpg
```
### EXAMPLES3
fuzzyKey 指定あり。一つだけが該当。
fuzzyKeyに"C3"を指定した場合、該当は一件のため、直接アプリケーションを起動します。
```
PS C:\Users\user1> qf C3
Opening: C:\Users\[username]\Pictures\FileC3.jpg
```
## PARAMETERS
### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。
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
## NOTES
"Show-QuickFileAccessList" または "qfl"は、閲覧用コマンドです。アクションはありません。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)
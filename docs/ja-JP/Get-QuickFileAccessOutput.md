---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Get-QuickFileAccessOutput
## SYNOPSIS
QuickAccessの結果を文字列オブジェクトとして出力します。
## SYNTAX
```
Get-QuickFileAccessOutput [[-fuzzyKey] <String>]
qfo [[-fuzzyKey] <String>]
```
## DESCRIPTION
"Get-QuickFileAccessOutput" または、"qfo" は、QuickAccess上で得られた検索結果を文字列オブジェクト
として出力します。他のコマンドへのパイプ、変数に割り当てたりする際に役立ちます。
fuzzyKeyを指定すると、キーワード部分一致検索を行い、絞り込まれた該当するキーリストを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
登録されたパスを選択し、コンソールに出力。
```
PS C:\Users\[username]\Desktop> qfo
--------------------------------
QF OUTPUT PATH
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
Enter the index to select: 2
C:\Users\[username]\Documents\FileB.txt
```
### EXAMPLES2
QuickAccessで取得したパスをGet-Itemにパイプし、プロパティを表示。
```
PS C:\Users\[username]\Desktop> qfo B | Get-Item
Directory: C:\Users\[username]\Documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---         2023/10/26 10:00                   FileB.txt
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
### System.String
この関数は、選択されたフォルダーの絶対パスを文字列オブジェクトとして出力します。
## NOTES
"Get-QuickAccessOutput"は、パイプによってコマンド連結する場合に役立ちます。
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README-ja-JP.md)
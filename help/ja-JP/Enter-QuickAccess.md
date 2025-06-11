---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess-Help/blob/main/en-US/QuickAccess-help.xml
schema: 2.0.0
---
# Enter-QuickAccess
## SYNOPSIS
QuickAccess に登録されたパスへ移動します。
## SYNTAX
```
Enter-QuickAccess [[-fuzzyKey] <String>]
```
## DESCRIPTION
コマンド"Enter-QuickAccess"で、QuickAccessに登録されているパスへと素早く移動できます。fuzzyKeyを指定すると、キーワード部分一致検索を行い、絞り込まれた該当するキーリストを表示します。fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
## EXAMPLES
### EXAMPLES1
fuzzyKey指定無しの場合、登録されている全リスト表示し、インデックス選択で移動します。
```powershell
PS C:\Users\username\Desktop> qa
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
Enter the index to select: 2
PS C:\Users\username\Documents\FolderB> 
```
### EXAMPLES2
fuzzyKey 指定あり。複数該当。fuzzyKeyに"A"を指定した場合、"A"含むキーワード検索をします。該当が複数あった場合、リストが表示されます。
```powershell
PS C:\Users\username\Desktop> qa A
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] FolderA1
[1] FolderA2
--------------------------------
Enter the index to select: 1
PS C:\Users\username\Desktop\FolderA2> 
```
### EXAMPLES3
fuzzyKey 指定あり。該当するものが一つだけ見つかった場合、そのパスに直接移動します。
```
PS C:\Users\[username]\Desktop> qa B
PS C:\Users\[username]\Documents\FolderB> 
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
### 無し。
この関数はパイプライン入力を受け付けません。
## OUTPUTS
### 無し。
この関数はパイプラインにオブジェクトを出力しません。
## RELATED LINKS
[QuickAccess Help Documents](https://github.com/June-10-cloudy/QuickAccess-Help)

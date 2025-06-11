---
external help file: QuickAccess-help.xml
online version: https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/QuickAccess-help.xml
schema: 2.0.0
---
# Add-QuickAccess
## SYNOPSIS
カレントパスを QuickAccessに登録します。
## SYNTAX
```
Add-QuickAccess
qaa
```
## DESCRIPTION
"Add-QuickAccess" または "qaa" は、カレントパスをQuickAccessに登録します。
登録されるキーは、デフォルトでカレントパスの最終ディレクトリ名になります。
以下の場合、カレントパスを登録できません。
・カレントパスが既に登録されている場合。
・カレントパスが別のキーで既に登録されている場合。
同一キーが登録されているが、パスが違っている場合、キーの末尾にインデックスを付加し登録されます。
## EXAMPLES
### EXAMPLES1
```
# エイリアス"qaa"を使用。
PS C:\Users\[username]\Desktop\FolderA3> qaa
Saved: test = C:\Users\[username]\Desktop\FolderA3
```
### EXAMPLES2
既に登録されている場合。
```
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Key 'FolderA3' with the same path already exists.
```
### EXAMPLES 3
同一のパスが既に登録されている場合。
```
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Path 'C:\Users\[username]\Desktop\FolderA3' is already registered with another key.
```
### EXAMPLES 4
登録データに同一のキーが存在するが、違うパスを登録しようとした場合。
キーに末尾にインデックスが付加され、新しいキーとして登録される。
```
# 既にキー"FolderA3" パス 'C:\Users\[username]\Desktop\FolderA3' が登録されている。
PS C:\Users\[username]\Documents\FolderA3> qaa
Saved: FolderA3-1 = C:\Users\user1\Documants\FolderA3
```
## PARAMETERS
## INPUTS
### なし。
この関数はパイプライン入力を受け付けません。
## OUTPUTS
### なし。
この関数はパイプラインにオブジェクトを出力しません。
## RELATED LINKS
[QuickAccess Help LinkMap](https://github.com/June-10-cloudy/QuickAccess/blob/master/README-ja-JP.md)

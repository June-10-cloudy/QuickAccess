---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qfoutput

## 概要
QuickAccessの結果を文字列オブジェクトとして出力します。

## 構文

```
qfoutput [[-fuzzyKey] <String>]
qfo [[-fuzzyKey] <String>]
```

## 説明
"qfoutput" または、"qfo" は、QuickAccess上で得られた検索結果を文字列オブジェクト
として出力します。他のコマンドへのパイプ、変数に割り当てたりする際に役立ちます。
fuzzyKeyを指定すると、キーワード部分一致検索を行い、絞り込まれた該当するキーリストを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。

## 使用例

### 例1
登録されたパスを選択し、コンソールに出力。
...
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
...
QuickAccessで取得したパスをGet-Itemにパイプし、プロパティを表示。
...
PS C:\Users\[username]\Desktop> qfo B | Get-Item
Directory: C:\Users\[username]\Documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---         2023/10/26 10:00                   FileB.txt
...
## パラメーター

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
## 入力
なし。この関数はパイプライン入力を受け付けません。
## 出力
System.String
この関数は、選択されたフォルダーの絶対パスを文字列オブジェクトとして出力します。
## 注釈
"qaoutput"は、パイプによってコマンド連結する場合に役立ちます。
## 関連リンク
[QuickAccess モジュールの概要](Get-Help QuickAccess)
### フォルダ操作関連コマンド
* [qa (移動)](Get-Help qa)
* [qaadd (登録)](Get-Help qaadd)
* [qaremove (解除)](Get-Help qaremove)
* [qarename (キー名変更)](Get-Help qarename)
* [qapath (登録パス表示)](Get-Help qapath)
* [qaexplorer (エクスプローラーで開く)](Get-Help qaexplorer)
* [qafind (サブフォルダ検索)](Get-Help qafind)
* [qacheck (登録確認)](Get-Help qacheck)
* [qaoutput (パス出力)](Get-Help qaoutput)
### ファイル操作関連コマンド
* [qf (ファイルを開く)](Get-Help qf)
* [qfadd (登録)](Get-Help qfadd)
* [qfremove (解除)](Get-Help qfremove)
* [qfpath (登録パス表示)](Get-Help qfpath)
* [qfoutput (パス出力)](Get-Help qfoutput)
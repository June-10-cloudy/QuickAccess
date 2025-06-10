---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qafind

## 概要
カレントパス内のサブフォルダをリスト表示し、インデックス選択で移動します。

## 構文
```
qafind [[-fuzzyKey] <String>]
qaf [[-fuzzyKey] <String>]
```

## 説明
カレントパスの直下にあるサブフォルダをリスト表示し、インデックス選択で移動します。
QuickAccessに登録されていないフォルダも対象。登録前の対象フォルダーを探すためのコマンド。
fuzzyKeyを指定することで部分一致検索を行い、対象フォルダを絞り込むことができます。
複数が該当する場合、対象フォルダのリストが表示されます。
fuzzyKeyが指定されない場合、カレント直下の全サブフォルダがリスト表示されます。

## 使用例

### 例1
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

### 例2
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
## パラメーター

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

## 入力
### なし。この関数はパイプライン入力を受け付けません。
## 出力
### なし。この関数はパイプラインにオブジェクトを出力しません。
## 注釈
"qafind" または "qaf" は、登録対象を検索する時に使用します。
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
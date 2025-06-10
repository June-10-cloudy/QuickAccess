---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qarename

## 概要
QuickAccessに登録されたキーのリネームを行います。

## 構文
```
qarename [[-fuzzyKey] <String>]
qar [[-fuzzyKey] <String>]
```

## 説明
"qarename" または "qar" で、QuickAccessの登録キーのリネームが出来ます。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。

## 例

### 例1
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
### 例2
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
## パラメーター

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

## 入力
### なし。この関数はパイプライン入力を受け付けません。
## 出力
### なし。この関数はパイプラインにオブジェクトを出力しません。
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


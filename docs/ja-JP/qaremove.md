---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qaremove

## 概要
QuickAccess に登録されたキーを解除します。フォルダ対象。

## 構文
```
qaremove [[-fuzzyKey] <String>]
qax [[-fuzzyKey] <String>]
```

## 説明
"qaremove" または "qax" は、QuickAccessに登録されたキーを解除します。
ディレクトリそのものが削除されることはありません。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。

## 使用例

### 例1
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
### 例2
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
## パラメーター
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

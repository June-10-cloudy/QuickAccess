---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qfpath

## 概要
QuickAccess に登録されたキーに対応する絶対パスを表示します。

## 構文

```
qfpath [[-fuzzyKey] <String>]
qfp [[-fuzzyKey] <String>]
```

## 説明
"qfpath" または "qfp" は、QuickAccess登録キーに対応する絶対パスを表示します。
fuzzyKeyを指定することで部分一致検索を行い、対象キーを絞り込むことができます。
複数が該当する場合、登録キーリストが表示されます。該当が一つの場合、絶対パスを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。

## 使用例

### 例1
fuzzyKey指定無しの場合、登録されている全リスト表示します。
インデックスを選択すると、キーに対応するパスを確認できます。
```
PS C:\Users\[username]> qfp
--------------------------------
QF SHOW PATH
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
Enter the index to select: 0
key : FIleA1.txt
path: C:\Users\[username]\Documents\FileA1.txt
```
### 例2
fuzzyKey 指定あり。複数該当。
fuzzyKeyに"A"を指定した場合、"A"含むキーワード検索をします。
該当が複数あった場合、リストが表示されます。
```
PS C:\Users\[username]\Desktop> qfp A
--------------------------------
QF SHOW PATH
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
--------------------------------
Enter the index to select: 1
key : FileA2.txt
path: C:\Users\[username]\Desktop\FileA2.txt
```
### 例3
fuzzyKey 指定あり。該当するものが一つだけ見つかった場合。
```
PS C:\Users\[username]\Desktop> qfp B
key : FileB.txt
path: C:\Users\[username]\Documents\FileB.txt
```
## パラメーター

### -fuzzyKey
部分一致検索を行うためのキーワード。
省略された場合、登録されている全データがリスト表示。
登録数が多い場合、fuzzyKeyの使用を推奨。

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
"qfpath" または "qfp" は、登録キーに紐づいた絶対パスを確認するために役立ちます。
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
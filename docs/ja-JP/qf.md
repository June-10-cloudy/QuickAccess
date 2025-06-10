---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qf

## 概要
QuickAccess に登録されたファイルを既定のアプリケーションで開きます。
ファイルエクスプローラーの"お気に入り"と同じ機能です。

## 構文

```
qf [[-fuzzyKey] <String>]
```

## 説明
"qf" は、QuickAccessに登録されたファイルを既定アプリケーションで開きます。
fuzzyKeyを指定すると、キーワード部分一致検索を行い、絞り込まれた該当するキーリストを表示します。
fuzzyKeyが指定されない場合、登録されている全てがリスト表示されます。
ファイルが存在しない場合、エラーメッセージを出力します。

## 使用例

### 例1
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
### 例 2
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
### 例3
fuzzyKey 指定あり。一つだけが該当。
fuzzyKeyに"C3"を指定した場合、該当は一件のため、直接アプリケーションを起動します。
```
PS C:\Users\user1> qf C3
Opening: C:\Users\[username]\Pictures\FileC3.jpg
```
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
### なし。この関数はパイプライン入力を受け付けません。
## 出力
### なし。この関数はパイプラインにオブジェクトを出力しません。
## 注釈
"qflist" または "qfl"は、閲覧用コマンドです。アクションはありません。
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


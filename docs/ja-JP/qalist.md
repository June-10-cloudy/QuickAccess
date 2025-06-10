---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qa

## 概要
QuickAccessに登録されたフォルダパス全てのキーをリスト表示します。

## 構文
```
qalist
qal
```
## 説明
"qalist" または、"qal" で、QuickAccessに登録されている全てのキーを確認することが出来ます。
対象はフォルダパスのみで、ファイルパス含まれません。

## 使用例

### 例1
```
# エイリアス"qal"を使用。
PS C:\Users\[username]\Desktop> qal
--------------------------------
QA ALL KEYS
--------------------------------
[0] FolderA1
[1] FolderA2
[2] FolderB
--------------------------------
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qal

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
"qalist" または "qal"は、閲覧用コマンドです。アクションはありません。
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

---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qa

## 概要
QuickAccessに登録されたファイルパス全てのキーをリスト表示します。

## 構文
```
qflist
qfl
```
## 説明
"qflist" または、"qfl" で、QuickAccessに登録されている全てのキーを確認することが出来ます。
対象はファイルパスのみで、フォルダパス含まれません。

## 使用例

### 例1
```
# エイリアス"qfl"を使用。
PS C:\Users\[username]\Desktop> qfl
--------------------------------
QA ALL KEYS
--------------------------------
[0] FileA1.txt
[1] FileA2.txt
[2] FileB.txt
--------------------------------
```
```yaml
Type: String
Parameter Sets: (All)
Aliases: qfl

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

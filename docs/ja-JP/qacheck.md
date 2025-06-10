---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qacheck

## 概要
カレントパスが QuickAccessに登録されているかを確認します。

## 構文

```
qacheck
qac
```

## 説明
"qacheck" または "qac" でカレントパスがQuickAccessに登録されているか確認できます。
登録されている場合、対応するキーが表示されます。
登録されていない場合は、その旨がメッセージで示されます。

## 使用例

### 例1
カレントパスが既に登録されており、キーが"B"だった場合。 
```
PS C:\Users\<UserName>\Documents\FolderB> qacheck
Key for current path: B

#エイリアス"qac"を使用。
PS C:\Users\<UserName>\Documents\FolderB> qac
Key for current path: B

```
### 例2
カレントパスが未登録だった場合。 
```
#エイリアス"qac"を使用。
PS C:\Users\<UserName>\Documents\FolderB> qac
Current path is not registered.

```

```yaml
Type: String
Parameter Sets: (All)
Aliases: qac

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
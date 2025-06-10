---
external help file: quick_access-help.xml
Module Name: QuickAccess
online version:
schema: 2.0.0
---

# qaadd

## 概要
カレントパスを QuickAccessに登録します。

## 構文

```
qaadd
qaa
```

## 説明
"qaadd" または "qaa" は、カレントパスをQuickAccessに登録します。
登録されるキーは、デフォルトでカレントパスの最終ディレクトリ名になります。
以下の場合、カレントパスを登録できません。
### カレントパスが既に登録されている場合。
### カレントパスが別のキーで既に登録されている場合。
同一キーが登録されているが、パスが違っている場合、キーの末尾にインデックスを付加し登録されます。

## 使用例

### 例1
```
# エイリアス"qaa"を使用。
PS C:\Users\[username]\Desktop\FolderA3> qaa
Saved: test = C:\Users\[username]\Desktop\FolderA3
```
### 例2
既に登録されている場合。
```
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Key 'FolderA3' with the same path already exists.
```
### 例 3
同一のパスが既に登録されている場合。
```
PS C:\Users\[username]\Desktop\FolderA3> qaa
Warning: Path 'C:\Users\[username]\Desktop\FolderA3' is already registered with another key.
```
### 例 4
登録データに同一のキーが存在するが、違うパスを登録しようとした場合。
キーに末尾にインデックスが付加され、新しいキーとして登録される。
```
# 既にキー"FolderA3" パス 'C:\Users\[username]\Desktop\FolderA3' が登録されている。
PS C:\Users\[username]\Documents\FolderA3> qaa
Saved: FolderA3-1 = C:\Users\user1\Documants\FolderA3
```
## パラメーター

```yaml
Type: String
Parameter Sets: (All)
Aliases: qaa

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

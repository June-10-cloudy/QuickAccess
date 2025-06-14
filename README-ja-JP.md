# QuickAccess for PowerShell

## QuickAccessとは？
QuickAccessは、ファイルエクスプローラーのクイックアクセス機能、お気に入り機能をCUI環境で再現したモジュールです。頻繁に利用するフォルダ、ファイルへのアクセスをシンプルに管理、利用するための PowerShellコマンドレット群です。ファジー検索で対象を絞込み、素早く必要なフォルダパス、ファイルパスに到達できます。

## インストール

### PowerShell Gallery からのインストール (推奨)

以下のコマンドで簡単にインストールできます。

```powershell
Install-Module -Name QuickAccess -Scope CurrentUser
```

使用する場合、モジュールをインポートしておく必要があります。

```powershell
Import-Module -Name QuickAccess
```

毎回使用する場合は、PROFILEに設定しておけば、ターミナル起動時に自動でインポートされます。
まず、Profileのパスを確認します。(Profile名は環境によって違います)

```powershell
$PROFILE
C:\Users\username\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```
Profileをメモ帳などで開き、最終行に以下を記載します。

```powershell
Import-Module QuickAccess
```

ターミナルを再起動し、"Get-Command Enter-QuickAccess"を試します。
以下が表示されれば成功です。

```powershell
PS C:\Users\username\Documents\PowerShell\Modules\QuickAccess> Get-Command Enter-QuickAccess

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Enter-QuickAccess                                  1.0.0      QuickAccess
```

## チュートリアル

### 1. QuickAccessを実際に使ってみましょう。 "qa" と入力します。
初期設定としてモジュールフォルダに "quick_access.json" が生成されます。登録データは全てここで管理されます。
```powershell
PS C:\Users\username> qa
Quick access data jsonfile is empty.
```

### 2. 現在のカレントパスを登録してみましょう。 "qaa" と入力します。
現在のカレントパスが QuickAccess に登録されます。
```powershell
PS C:\Users\username> qaa
Added: user1 = C:\Users\username
```

### 3. 登録されているか確認してみましょう。"qal" と入力します。
"username" が登録されています。
```powershell
PS C:\Users\username> qal
--------------------------------
QA ALL KEYS
--------------------------------
[0] username
--------------------------------
```

### 4. ジャンプしてみましょう。
一旦、デスクトップに移動します。
```powershell
PS C:\Users\username> cd C:\Users\username\Desktop
PS C:\Users\username\Desktop>
```

"qa" と入力します。登録リストが表示されます。(まだ一つしかありません)
"Enter the index to select :" と聞かれたら、"0" と入力。
カレントが登録パスに移動します。
```powershell
PS C:\Users\user1\Desktop> qa
--------------------------------
QA MOVE CURRENT
--------------------------------
[0] username
--------------------------------
Enter the index to select: 0
PS C:\Users\username>
```

## コマンド & エイリアス 
### フォルダ関連
#### [Enter-QuickAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Enter-QuickAccess.md)
- qa : 登録パスへ移動 
#### [Open-QuickAccessExplorer](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Open-QuickAccessExplorer.md)
- qae : 登録パスをファイルエクスプローラーで開く
#### [Add-QuickAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Add-QuickAccess.md)
- qaa : カレントパスを QuickAccessに登録
#### [Remove-QuickAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Remove-QuickAccess.md)
- qax : 登録キーを解除(フォルダ対象)
#### [Rename-QuickAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Rename-QuickAccess.md)
- qar : 登録キーのリネーム
#### [Show-QuickAccessStatus](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Show-QuickAccessStatus.md)
- qas : カレントパスが登録されているかを確認
#### [Show-QuickAccessPath](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Show-QuickAccessPath.md)
- qap : 登録キーに対応する絶対パスを表示
#### [Show-QuickAccessList](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Show-QuickAccessList.md)
- qal : 登録フォルダパス全てのキーをリスト表示
#### [Enter-QuickAccessFolder](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Enter-QuickAccessFolder.md)
- qaf : カレントパス内のサブフォルダをリスト表示
#### [Get-QuickAccessOutput](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Get-QuickAccessOutput.md)
- qao : QuickAccessの結果を文字列オブジェクト出力(フォルダ対象)
### ファイル関連
#### [Open-QuickFileAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Open-QuickFileAccess.md)
- qf : 登録ファイルを既定のアプリケーションで開く
#### [Add-QuickFileAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Add-QuickFileAccess.md)
- qfa : ファイルをQuickAccessに登録
#### [Remove-QuickFileAccess](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Remove-QuickFileAccess.md)
- qfx : 登録キーを解除(ファイル対象)
#### [Show-QuickFileAccessPath](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Show-QuickFileAccessPath.md)
- qfp : 登録キーに対応する絶対パスを表示
#### [Show-QuickFileAccessList](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Show-QuickFileAccessList.md)
- qfl : 登録ファイルパス全てのキーをリスト表示
#### [Get-QuickFileAccessOutput](https://github.com/June-10-cloudy/QuickAccess/blob/master/docs/ja-JP/Get-QuickFileAccessOutput.md)
- qfo : QuickAccessの結果を文字列オブジェクト出力(ファイル対象)


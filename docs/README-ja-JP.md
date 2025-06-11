# QuickAccess for PowerShell

## QuickAccessとは？
QuickAccessは、ファイルエクスプローラーのクイックアクセス機能、お気に入り機能をCUI環境で再現したモジュールです。頻繁に利用するフォルダ、ファイルへのアクセスをシンプルに管理、利用するための PowerShellコマンドレット群です。ファジー検索で対象を絞込み、素早く必要なフォルダパス、ファイルパスに到達できます。

## コマンド & エイリアス 
### フォルダ関連
*Enter-QuickAccess        : qa  : 登録パスへ移動 
*Open-QuickAccessExplorer : qae : 登録パスをファイルエクスプローラーで開く
*Add-QuickAccess          : qaa : カレントパスを QuickAccessに登録
*Remove-QuickAccess       : qax : 登録キーを解除(フォルダ対象)
*Rename-QuickAccess       : qar : 登録キーのリネーム
*Show-QuickAccessStatus   : qas : カレントパスが登録されているかを確認
*Show-QuickAccessPath     : qap : 登録キーに対応する絶対パスを表示
*Show-QuickAccessList     : qal : 登録フォルダパス全てのキーをリスト表示
*Enter-QuickAccessFolder  : qaf : カレントパス内のサブフォルダをリスト表示
*Get-QuickAccessOutput    : qao : QuickAccessの結果を文字列オブジェクト出力(フォルダ対象)
### ファイル関連
*Open-QuickFileAccess     : qf  : 登録ファイルを既定のアプリケーションで開く
*Add-QuickFileAccess      : qfa : ファイルをQuickAccessに登録
*Remove-QuickFileAccess   : qfx : 登録キーを解除(ファイル対象)
*Show-QuickFileAccessPath : qfp : 登録キーに対応する絶対パスを表示
*Show-QuickFileAccessList : qfl : 登録ファイルパス全てのキーをリスト表示
*Get-QuickFileAccessOutput: qfo : QuickAccessの結果を文字列オブジェクト出力(ファイル対象)

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
*----------     ----                                               -------    ------
Function        Enter-QuickAccess                                  1.0.0      QuickAccess
```


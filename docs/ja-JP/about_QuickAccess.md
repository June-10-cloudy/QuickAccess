---
schema: 2.0.0
external help file: QuickAccess-help.xml
---
# about_QuickAccess
## SHORT DESCRIPTION
QuickAccessは、ファイルエクスプローラーのクイックアクセス機能、お気に入り機能をCUI環境で再現したモジュールです。
## LONG DESCRIPTION
頻繁に利用するフォルダ、ファイルへのアクセスをシンプルに管理、利用するための PowerShellコマンドレット群です。ファジー検索で対象を絞込み、素早く必要なフォルダパス、ファイルパスに到達できます。
## COMMANDLETS
Enter-QuickAccess        : 登録パスへ移動 
Open-QuickAccessExplorer : 登録パスをファイルエクスプローラーで開く
Add-QuickAccess          : カレントパスを QuickAccessに登録
Remove-QuickAccess       : 登録キーを解除(フォルダ対象)
Rename-QuickAccess       : 登録キーのリネーム
Show-QuickAccessStatus   : カレントパスが登録されているかを確認
Show-QuickAccessPath     : 登録キーに対応する絶対パスを表示
Show-QuickAccessList     : 登録フォルダパス全てのキーをリスト表示
Enter-QuickAccessFolder  : カレントパス内のサブフォルダをリスト表示
Get-QuickAccessOutput    : QuickAccessの結果を文字列オブジェクト出力(フォルダ対象)
Open-QuickFileAccess     : 登録ファイルを既定のアプリケーションで開く
Add-QuickFileAccess      : ファイルをQuickAccessに登録
Remove-QuickFileAccess   : 登録キーを解除(ファイル対象)
Show-QuickFileAccessPath : 登録キーに対応する絶対パスを表示
Show-QuickFileAccessList : 登録ファイルパス全てのキーをリスト表示
Get-QuickFileAccessOutput: QuickAccessの結果を文字列オブジェクト出力(ファイル対象)

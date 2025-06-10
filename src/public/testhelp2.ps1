<#
.SYNOPSIS
これはテスト用のヘルプコマンドです。333
.DESCRIPTION
このコマンドは、コメントベースヘルプがPowerShellで正しく認識され、Get-Helpコマンドで表示されるかを確認するためのものです。
特に、ヘルプブロックが関数の定義の直前に配置されているかのテストを目的としています。
#>
function Get-TestHelp2 {
    param(
        [string]$Name = "World"
    )
    Write-Host "$Name, World! This is a test."
}
$script:jsonPath = Join-Path $PSScriptRoot 'quick_access.json'
$script:quickAccessCache = $null
$script:cacheLastModified = $null

. "$PSScriptRoot\src\private\utility.ps1"
. "$PSScriptRoot\src\private\cache.ps1"
. "$PSScriptRoot\src\public\qa.ps1"
. "$PSScriptRoot\src\public\qf.ps1"
 "$PSScriptRoot\src\public\aliases.ps1"


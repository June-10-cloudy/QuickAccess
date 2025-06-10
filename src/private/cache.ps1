function Get-CachedQuickAccessData {
    Init-Jsonfile
    $currentFileLastModified = (Get-Item $script:jsonPath).LastWriteTime
    if ($null -eq $script:quickAccessCache -or $currentFileLastModified -gt $script:cacheLastModified) {
        $script:quickAccessCache = Get-Content $script:jsonPath -Raw | ConvertFrom-Json
        $script:cacheLastModified = $currentFileLastModified
    }
    return $script:quickAccessCache
}

function Get-QuickAccess() {
    return (Get-CachedQuickAccessData).quick_access
}
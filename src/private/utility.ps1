function Init-JsonFile {
    if (-not (Test-Path $script:jsonPath)) {
        Write-Verbose "quick_access.json not found. Initializing new file..."
        $init = @{
            quick_access = @{
                folders = @{}
                files = @{}
            }
        }
        $init | ConvertTo-Json -Depth 3 | Set-Content $script:jsonPath -Encoding utf8
    }
}

function Convert-To-Hashtable {
    param(
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [PSObject]$InputObject
    )
    process {
        $hashTable = @{}
        $InputObject.PSObject.Properties | ForEach-Object {
            $hashTable[$_.Name] = $_.Value
        }
        return $hashTable
    }
}

function Is-Key {
    param(
        [Parameter(Mandatory=$true)]
        [Hashtable]$hash, 
        [Parameter(Mandatory=$true)]
        [string]$key
    )
    return $hash.ContainsKey($key)
}

function Is-Path {
    param(
        [Parameter(Mandatory=$true)]
        [Hashtable]$hash,
        [Parameter(Mandatory=$true)]
        [string]$path
    )
    return $hash.Values -contains $path
}

function Is-Property {
    param(
        [Parameter(Mandatory=$true)]
        [Hashtable]$hash,
        [Parameter(Mandatory=$true)]
        [string]$key,
        [Parameter(Mandatory=$true)]
        [string]$path
    )
    return (Is-Key -hash $hash -key $key) -and (Is-Path -hash $hash -path $path)
}

function Get-UniqueKey {
    param(
        [Parameter(Mandatory=$true)]
        [hashtable]$hash,
        [Parameter(Mandatory=$true)]
        [string]$key
    )
    $i = 1
    do {
        $newKey = "$key-$i"
        $i++
    } while ($hash.ContainsKey($newKey))
    return $newKey
}

function Get-MatchingKey {
    param(
        [Parameter(Mandatory=$true)]
        [Hashtable]$hash,
        [string]$fuzzyKey,
        [Parameter(Mandatory=$true)]
        [string]$title,
        [Parameter(Mandatory=$false)]
        [bool]$listDisplay = $false
    )
    if ($null -eq $hash -or $hash.Count -eq 0) {
        Write-Host "Quick access data jsonfile is empty."
        return $null
    }
    $matchingKeys = @()
    if ([string]::IsNullOrWhiteSpace($fuzzyKey)) { # fuzzykey == "" > list all items
        $matchingKeys = @($hash.Keys | Sort-Object)
    } else {
        $matchingKeys = @($hash.Keys | Where-Object { $_ -match $fuzzyKey } | Sort-Object) # filltering
    }
    if ($matchingKeys.Count -eq 0) {
        Write-Host "No matching keys found for '$fuzzyKey'."
        return $null
    }
    if (-not ($listDisplay) -and ($matchingKeys.Count -eq 1)) {
        return $matchingKeys[0]
    }
    Write-Host "--------------------------------"
    Write-Host $title
    Write-Host "--------------------------------"
    for ($i = 0; $i -lt $matchingKeys.Count; $i++) {
       Write-Host ("[{0}] {1}" -f $i, $matchingKeys[$i])
    }
    Write-Host "--------------------------------"
    $index = Read-Host "Enter the index to select"

    if (-not [int]::TryParse($index, [ref]$null)) {
        Write-Host "Invalid index."
        return $null
    } else {
        $index = [int]$index
    }
    if ($index -lt 0 -or $index -ge $matchingKeys.Count) {
        Write-Host "Invalid index."
        return $null
    }
    return $matchingKeys[$index]
}


function Show-All-Keys {
    param(
        [Parameter(Mandatory=$true)]
        [Hashtable]$hash
    )
    if ($null -eq $hash -or $hash.Count -eq 0) {
        Write-Host "Quick access data jsonfile is empty."
        return $null
    }
    $allKeys = @($hash.Keys | Sort-Object)

    Write-Host "--------------------------------"
    Write-Host "QA ALL KEYS"
    Write-Host "--------------------------------"
    for ($i = 0; $i -lt $allKeys.Count; $i++) {
       Write-Host ("[{0}] {1}" -f $i, $allKeys[$i])
    }
    Write-Host "--------------------------------"
}

function Get-KeyByPath {
    param(
        [Parameter(Mandatory=$true)]
        [hashtable]$hash,
        [Parameter(Mandatory=$true)]
        [string]$path
    )
    $foundKey = $hash.GetEnumerator() |
                Where-Object { $_.Value -eq $path } |
                Select-Object -ExpandProperty Name -First 1
    return $foundKey
}

function Get-Hash-Files {
    $quickAccess = Get-QuickAccess
    return $quickAccess.files | Convert-To-Hashtable
}

function Get-Hash-Folders {
    $quickAccess = Get-QuickAccess
    return $quickAccess.folders | Convert-To-Hashtable
}

function Save-Hash-Files {
    param(
        [Parameter(Mandatory=$true)]    
        [hashtable]$hash
    )
    $jsonfileObject = Get-CachedQuickAccessData 
    $jsonfileObject.quick_access.files = [PSCustomObject]$hash 
    $jsonfileObject | ConvertTo-Json -Depth 3 | Set-Content $script:jsonPath -Encoding utf8
    $script:quickAccessCache = $jsonfileObject
    $script:cacheLastModified = (Get-Item $script:jsonPath).LastWriteTime 
}

function Save-Hash-Folders {
    param(
        [Parameter(Mandatory=$true)]    
        [hashtable]$hash
    )
    $jsonfileObject = Get-CachedQuickAccessData 
    $jsonfileObject.quick_access.folders = [PSCustomObject]$hash
    $jsonfileObject | ConvertTo-Json -Depth 3 | Set-Content $script:jsonPath -Encoding utf8
    $script:quickAccessCache = $jsonfileObject
    $script:cacheLastModified = (Get-Item $script:jsonPath).LastWriteTime 
}
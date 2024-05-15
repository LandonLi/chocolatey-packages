Import-Module au

$releases = "https://api.github.com/repos/nilaoda/BBDown/releases/latest"

function global:au_GetLatest {
    $latestRelease = ((Invoke-WebRequest -Uri $releases -UseBasicParsing).Content | ConvertFrom-Json)
    $version = $latestRelease.tag_name
    $url = ($latestRelease.assets | Where-Object -Property name -match "win-x64").browser_download_url
    return @{ Version = $version; URL64 = $url }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(\s+checksum\s+=\s+)('.*')" = "`$1'$($Latest.Checksum64)'"
            "(\s+url\s+=\s+)('.*')" = "`$1'$($Latest.URL64)'"
        }
    }
    Write-Host "URL: $Latest.URL64`n"
    Write-Host "CheckSum: $Latest.Checksum64`n"
}

update

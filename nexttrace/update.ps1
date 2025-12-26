Import-Module au

$releases = "https://api.github.com/repos/nxtrace/NTrace-core/releases/latest"

function global:au_GetLatest {
    $latestRelease = ((Invoke-WebRequest -Uri $releases -UseBasicParsing -Headers (if ($env:GITHUB_TOKEN) { @{ Authorization = "token $env:GITHUB_TOKEN" } } else { @{} })).Content | ConvertFrom-Json)
    $version = $latestRelease.tag_name.TrimStart("v")
    $url = ($latestRelease.assets | Where-Object -Property name -match "windows_amd64").browser_download_url
    return @{ Version = $version; URL64 = $url }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
            "(^[$]Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
    Write-Host "URL: $Latest.URL64`n"
    Write-Host "CheckSum: $Latest.Checksum64`n"
}

update -ChecksumFor 64

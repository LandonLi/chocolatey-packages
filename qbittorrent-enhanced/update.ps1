Import-Module au

$releases = "https://api.github.com/repos/c0re100/qBittorrent-Enhanced-Edition/releases/latest"

function global:au_GetLatest {
    $latestRelease = ((Invoke-WebRequest -Uri $releases -UseBasicParsing).Content | ConvertFrom-Json)
    $version = $latestRelease.tag_name.Split("-")[1]
    Write-Host $version
    $pattern32 = ".+qbittorrent_enhanced_${version}_setup.exe"
    $pattern64 = ".+qbittorrent_enhanced_${version}_x64_setup.exe"
    $url32 = ($latestRelease.assets | Where-Object browser_download_url -CMatch $pattern32)[0].browser_download_url
    $url64 = ($latestRelease.assets | Where-Object browser_download_url -CMatch $pattern64)[0].browser_download_url
    return @{ Version = $version; URL32 = $url32; URL64 = $url64 }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')" = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
            "(^[$]Checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

update

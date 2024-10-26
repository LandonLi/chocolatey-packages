Import-Module au

$releases = "https://api.github.com/repos/c0re100/qBittorrent-Enhanced-Edition/releases/latest"

function global:au_GetLatest {
    $latestRelease = ((Invoke-WebRequest -Uri $releases -UseBasicParsing).Content | ConvertFrom-Json)
    $version = $latestRelease.tag_name.Split("-")[1]
    Write-Host $version
    $pattern = ".+qbittorrent_enhanced_${version}_x64_setup.exe"
    $url = ($latestRelease.assets | Where-Object browser_download_url -CMatch $pattern)[0].browser_download_url
    return @{ Version = $version; URL32 = $url; URL64 = $url }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
            "(^[$]Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

update

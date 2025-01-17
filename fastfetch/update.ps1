Import-Module au

$releases = "https://api.github.com/repos/fastfetch-cli/fastfetch/releases/latest"
$file = "fastfetch-windows-amd64.zip"

function global:au_GetLatest {
    $latestRelease = ((Invoke-WebRequest -Uri $releases -UseBasicParsing).Content | ConvertFrom-Json)
    $version = $latestRelease.name
    $checkSumPattern = "([0-9a-z]{64})\s+.+\/$file"
    $checkSum = (($latestRelease.body | Select-String -Pattern $checkSumPattern).Matches.Value -split "\s+")[0].ToUpper()
    $url = ($latestRelease.assets | Where-Object browser_download_url -CMatch ".*fastfetch-windows-amd64.zip")[0].browser_download_url
    return @{ Version = $version; URL32 = $url; URL64 = $url; Checksum = $checkSum }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
            "(\s+checksum\s+=\s+)('.*')" = "`$1'$($Latest.Checksum)'"
        }      
    }
}

update -ChecksumFor none

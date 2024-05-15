Import-Module au

$releases = "https://api.github.com/repos/fastfetch-cli/fastfetch/releases/latest"
$file = "fastfetch-windows-amd64.zip"

function global:au_GetLatest {
    $latestRelease = ((Invoke-WebRequest -Uri $releases -UseBasicParsing).Content | ConvertFrom-Json)
    $version = $latestRelease.name
    $pattern = "([0-9a-z]{64})\s+.+\/$file"
    $checkSum = (($latestRelease.body | Select-String -Pattern $pattern).Matches.Value -split "\s+")[0].ToUpper()
    return @{ Version = $version; Checksum = $checkSum }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(\s+checksum\s+=\s+)('.*')" = "`$1'$($Latest.Checksum)'"
        }      
    }
}

update -ChecksumFor none

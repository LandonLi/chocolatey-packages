$ErrorActionPreference = 'Stop';

$url = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-5.0.0.10/qbittorrent_enhanced_5.0.0.10_x64_setup.exe'
$Checksum = '618e392f70ae56055d95556e027aa891b63f81899d364c83adb95854fd86f6a8'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = "exe"
  url            = $url
  url64bit       = $url
  silentArgs     = "/S"
  softwareName   = "qbittorrent*"
  checksum       = $Checksum
  checksumType   = "sha256"
  checksum64     = $Checksum
  checksumType64 = "sha256"
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$url = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-5.2.3.10/qbittorrent_enhanced_5.2.3.10_x64_setup.exe'
$Checksum = '5b19a1e734505a64d077a994bb9f8bcd52569308841fe4372f75c55df47d0340'

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

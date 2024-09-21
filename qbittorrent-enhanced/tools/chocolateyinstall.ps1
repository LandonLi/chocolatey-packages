$ErrorActionPreference = 'Stop';

$url32 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.7.10/qbittorrent_enhanced_4.6.7.10_setup.exe'
$url64 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.7.10/qbittorrent_enhanced_4.6.7.10_x64_setup.exe'
$Checksum32 = 'a92f43fa2e63c17828001d44085c32d8fb1723a7da66b57645c43456b110f84b'
$Checksum64 = 'cd4642004f85338b9e97bb73935d8565f8ed529b2de17a1f0b3c4f9dd9bef7f8'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = "exe"
  url            = $url32
  url64bit       = $url64
  silentArgs     = "/S"
  softwareName   = "qbittorrent*"
  checksum       = $Checksum32
  checksumType   = "sha256"
  checksum64     = $Checksum64
  checksumType64 = "sha256"
}

Install-ChocolateyPackage @packageArgs

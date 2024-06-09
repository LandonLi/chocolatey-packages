$ErrorActionPreference = 'Stop';

$url32 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.4.10/qbittorrent_enhanced_4.6.4.10_setup.exe'
$url64 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.4.10/qbittorrent_enhanced_4.6.4.10_x64_setup.exe'
$Checksum32 = '5d5c2a14b0e208d8835a7f6f53dd7cb27c62b11f8d5c29bc4615e46c4e8ff600'
$Checksum64 = 'bb9e9b0390cdf4edbc83940df8cf46ed407a59342dde1f9c604fdd000cf4ebd2'

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

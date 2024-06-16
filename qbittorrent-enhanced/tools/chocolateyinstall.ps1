$ErrorActionPreference = 'Stop';

$url32 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.5.10/qbittorrent_enhanced_4.6.5.10_setup.exe'
$url64 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.5.10/qbittorrent_enhanced_4.6.5.10_x64_setup.exe'
$Checksum32 = '4a514f340c5d4c91ad60f2d16790c0e4c25c4ffce87144b71a9f1baf292469e5'
$Checksum64 = 'de6c79655fc7b4f97db5c8e2eccddaef5936868b312c72b54974dcd16f8e1d7c'

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

$ErrorActionPreference = 'Stop';

$url = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-5.2.4.10/qbittorrent_enhanced_5.2.4.10_x64_setup.exe'
$Checksum = 'd76fe0df0513fe85a5af4e936eda1a10d239b87e148e546af9aa4afc50d27dc2'

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

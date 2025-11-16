$ErrorActionPreference = 'Stop';

$url = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-5.1.3.10/qbittorrent_enhanced_5.1.3.10_x64_setup.exe'
$Checksum = 'ca3b5342a54ca25b1735161c401fef9c9fea8de5c779e53b7b6e62dea9163751'

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

﻿$ErrorActionPreference = 'Stop';

$url = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-5.1.1.10/qbittorrent_enhanced_5.1.1.10_x64_setup.exe'
$Checksum = 'dfd83fe350208d7372b1d1e95e17989c410755d128cb559c9b8d01fecf8606b5'

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

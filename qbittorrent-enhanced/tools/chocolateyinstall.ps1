$ErrorActionPreference = 'Stop';

$url32 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.6.10/qbittorrent_enhanced_4.6.6.10_setup.exe'
$url64 = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.6.6.10/qbittorrent_enhanced_4.6.6.10_x64_setup.exe'
$Checksum32 = 'ee29b09b616472b121e7e78c07cbd18ddf15167082977e11663e061c1c087a15'
$Checksum64 = '1f9d5ad09376c7ec2b65de96c81cdd973c41d8b6c94317fa5cb16fb725972b8c'

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

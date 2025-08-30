$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.51.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'FBBCBCF4BF2FF4137CC278FCF306F92941B6AA723992AAE024B30A036D301933'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

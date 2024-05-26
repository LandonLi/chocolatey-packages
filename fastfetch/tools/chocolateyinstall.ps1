$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '538059BD4F582762D66CDF15B7CC738989D9571C6A929404B1374C9B6BAC0A8D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

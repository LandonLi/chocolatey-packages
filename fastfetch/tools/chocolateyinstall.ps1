$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.47.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '30816545E27CDFE8951E264D4520C7B759E9755E17091EEA0A58A9EB2B230EFD'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

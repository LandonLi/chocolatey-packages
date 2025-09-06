$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.52.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '65660BF922CD34A3EC56393530331D5F93F830A668623BCC7DCBC8334ABF33A2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

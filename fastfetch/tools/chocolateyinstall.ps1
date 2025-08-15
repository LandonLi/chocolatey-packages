$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.50.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'C6D7907838D89A890F28B205F7575ECF4E3E80E3CD0DAAE87225E919E173F2B9'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.67.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '19AEB34E4BB5B19F09236AFBB6FB617241828CD94D967E7108C5EB3471CD26D8'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

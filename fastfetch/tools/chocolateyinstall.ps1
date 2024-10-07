$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'CC932106EEED5BE4369F7D6654DE7130D4AFFBB1074301ACF3EACAE2E3CC3ACF'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

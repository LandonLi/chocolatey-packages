$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.54.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '7DDFEBADE48634479C9BDD809FBE567AC9E629223F2D2413D5F9A95A01CE2467'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

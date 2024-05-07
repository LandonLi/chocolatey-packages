$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '4B54AB8182E51E53D7D138CA12EBFE5CA8B431C394AFE4877DEC2B301271BB21'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

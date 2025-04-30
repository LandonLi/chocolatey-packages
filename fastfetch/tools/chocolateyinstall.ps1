$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.42.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '618407B65DE7B3BF08F7407F1DB1EDFDD16D9A87402EE794D4C17769BF033A47'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

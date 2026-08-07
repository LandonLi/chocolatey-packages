$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.67.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '259E2F57C5ED09C5E1903032E16378056E9DD908DFF2FC4015AE74EA968A1B9D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

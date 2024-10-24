$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '3FD4666C9473961CA99BD658671B89AE2F548C77C0257F220844B0DBAFE9C49D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

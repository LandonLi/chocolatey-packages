$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.39.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'E403FCD01FDF0DAACCB10EA4F3BBA100F4C31DF7979E20BF99CA1D95CDC0F5E1'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

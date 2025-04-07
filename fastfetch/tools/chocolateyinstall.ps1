$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.40.3/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '1B7FBDA0C2CB28C2F245284997E860518023A610A29F499FCD744F0DA70A8192'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

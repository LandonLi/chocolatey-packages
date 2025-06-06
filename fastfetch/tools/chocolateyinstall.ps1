$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.45.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'AD7562FA97E0E6FEA0E45DFCB577B4DAAF7B41467992E9599F4A007CC255B3C4'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

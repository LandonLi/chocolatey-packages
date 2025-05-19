$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.43.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'F78E305AA2953F663D4AFFB282908C07C202EDEEE8C3A5FE1A2C5055C2618402'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

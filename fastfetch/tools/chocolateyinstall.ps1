$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.68.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '7002024C5BA37BDF9142F8B38039D3DD5DA6DE33D3B679B57693DC42483D882D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

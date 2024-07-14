$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'FECCDD4AC756D5FC1DD24913AEC61C256EDE8B141D5076079FDEBCEFCF81A9C7'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

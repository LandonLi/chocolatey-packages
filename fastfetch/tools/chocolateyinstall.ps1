$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '5F4AF62DDF36E3AA868CC5B5D66BFCF958071214E53FB1AFD5D478F04274807D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

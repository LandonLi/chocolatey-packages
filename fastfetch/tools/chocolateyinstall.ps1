$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.40.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'D9FADDCFA3E634970B66828649074D2D9686D9FA5EEEF074430C963B7149DDED'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '0308BFA3ADA38F69E5B29AD8646FA7CD11B507F57B33DE8EF80EF83F3F20C297'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

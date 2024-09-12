$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '295E70F1BA20F16B8231DF39BBEA3AD0010EAC642B588049BAB4E537709AC643'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

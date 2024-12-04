$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '8C1AC942FE38ABB40192E7736A6E47ACE570707E52141F5311D8164C02E5A42B'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

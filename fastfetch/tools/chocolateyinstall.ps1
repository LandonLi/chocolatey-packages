$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.69.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'ABA011C1C45D1A6BDCF52098DD0B9AFE990FE444180BC491E87F36670F1452EF'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

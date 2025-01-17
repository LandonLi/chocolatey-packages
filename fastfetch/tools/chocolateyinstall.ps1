$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.34.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '04812F50B7E44E85EE0DBE86E892C980EC5C19C143C0D7ECD347DE73CB989BC7'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

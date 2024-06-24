$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '9FC141EC8104BDE3FD80EC06514DD6B04EE8D3F256CD6CD1CADFB7909A874CF9'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
